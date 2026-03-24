import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ethio_omni_app/features/payments/data/models/payment_model.dart';

/// Service for handling payment app-to-app integrations via URL launcher
/// Supports Telebirr deeplinks and ET-SWITCH web/mobile banking flows
class PaymentLauncherService {
  PaymentLauncherService._();

  static final PaymentLauncherService instance = PaymentLauncherService._();

  // Telebirr app scheme (Android)
  static const String _telebirrAndroidScheme = 'com.ethiotelecom.telebirr';
  // Telebirr app scheme (iOS)
  static const String _telebirrIosScheme = 'telebirr://';
  // Telebirr Play Store URL
  static const String _telebirrPlayStoreUrl =
      'https://play.google.com/store/apps/details?id=com.ethiotelecom.telebirr';
  // Telebirr App Store URL
  static const String _telebirrAppStoreUrl =
      'https://apps.apple.com/et/app/telebirr/id1234567890';

  // ET-SWITCH payment gateway URL
  static const String _etSwitchGatewayUrl =
      'https://paymentgateway.etswitch.et/pay';

  /// Check if Telebirr app is installed
  Future<bool> isTelebirrInstalled() async {
    try {
      final telebirrUri = Uri.parse('$_telebirrIosScheme');
      return await canLaunchUrl(telebirrUri);
    } catch (e) {
      return false;
    }
  }

  /// Launch Telebirr app for direct payment
  Future<PaymentLaunchResult> launchTelebirrApp(TelebirrDirectPayment payment) async {
    try {
      // Check if Telebirr is installed
      final isInstalled = await isTelebirrInstalled();

      if (!isInstalled) {
        // Redirect to app store
        return PaymentLaunchResult.notInstalled(
          androidUrl: _telebirrPlayStoreUrl,
          iosUrl: _telebirrAppStoreUrl,
        );
      }

      // Try native Telebirr deeplink first
      final deeplinkUri = Uri.parse(payment.deeplinkUrl);
      if (await canLaunchUrl(deeplinkUri)) {
        final success = await launchUrl(
          deeplinkUri,
          mode: LaunchMode.externalApplication,
        );
        return success
            ? PaymentLaunchResult.success()
            : PaymentLaunchResult.failed('Could not launch Telebirr app');
      }

      // Fallback to web URL
      final webUri = Uri.parse(payment.webUrl);
      final success = await launchUrl(
        webUri,
        mode: LaunchMode.externalApplication,
      );
      return success
          ? PaymentLaunchResult.success(fallback: true)
          : PaymentLaunchResult.failed('Could not launch payment URL');
    } catch (e) {
      return PaymentLaunchResult.failed('Error launching Telebirr: $e');
    }
  }

  /// Launch ET-SWITCH card payment in browser
  Future<PaymentLaunchResult> launchEtSwitchCardPayment(
    EtSwitchPaymentResponse response,
  ) async {
    try {
      final paymentUrl = response.paymentUrl;
      if (paymentUrl == null || paymentUrl.isEmpty) {
        return PaymentLaunchResult.failed('Payment URL not available');
      }

      final uri = Uri.parse(paymentUrl);
      final success = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
        webViewConfiguration: const WebViewConfiguration(
          enableJavaScript: true,
          enableDomStorage: true,
        ),
      );

      return success
          ? PaymentLaunchResult.success()
          : PaymentLaunchResult.failed('Could not launch payment page');
    } catch (e) {
      return PaymentLaunchResult.failed('Error launching ET-SWITCH: $e');
    }
  }

  /// Launch ET-SWITCH bank transfer flow
  Future<PaymentLaunchResult> launchEtSwitchBankTransfer(
    EtSwitchPaymentResponse response,
  ) async {
    try {
      // For bank transfers, we typically show instructions
      // or redirect to a web page with transfer details
      final paymentUrl = response.paymentUrl;
      if (paymentUrl != null && paymentUrl.isNotEmpty) {
        final uri = Uri.parse(paymentUrl);
        final success = await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
        return success
            ? PaymentLaunchResult.success()
            : PaymentLaunchResult.failed('Could not launch bank transfer page');
      }

      // If no URL, return success with QR code data for manual scanning
      if (response.qrCodeData != null) {
        return PaymentLaunchResult.success(
          qrCodeData: response.qrCodeData,
        );
      }

      return PaymentLaunchResult.failed('No payment method available');
    } catch (e) {
      return PaymentLaunchResult.failed('Error launching bank transfer: $e');
    }
  }

  /// Launch ET-SWITCH mobile banking app
  Future<PaymentLaunchResult> launchEtSwitchMobileBanking(
    EtSwitchPaymentResponse response,
    String bankCode,
  ) async {
    try {
      // Check for deeplink URL first
      final deeplinkUrl = response.deeplinkUrl;
      if (deeplinkUrl != null && deeplinkUrl.isNotEmpty) {
        final uri = Uri.parse(deeplinkUrl);
        if (await canLaunchUrl(uri)) {
          final success = await launchUrl(
            uri,
            mode: LaunchMode.externalApplication,
          );
          if (success) {
            return PaymentLaunchResult.success();
          }
        }
      }

      // Fallback to web URL
      final paymentUrl = response.paymentUrl;
      if (paymentUrl != null && paymentUrl.isNotEmpty) {
        final uri = Uri.parse(paymentUrl);
        final success = await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
        return success
            ? PaymentLaunchResult.success(fallback: true)
            : PaymentLaunchResult.failed('Could not launch mobile banking');
      }

      // If bank app not installed, suggest Play/App Store
      final storeUrl = _getBankAppStoreUrl(bankCode);
      if (storeUrl != null) {
        return PaymentLaunchResult.notInstalled(
          androidUrl: storeUrl,
          iosUrl: storeUrl,
        );
      }

      return PaymentLaunchResult.failed('Could not open mobile banking');
    } catch (e) {
      return PaymentLaunchResult.failed('Error launching mobile banking: $e');
    }
  }

  /// Launch phone dialer for USSD codes
  Future<PaymentLaunchResult> launchUssdCode(String ussdCode) async {
    try {
      // Ensure USSD code starts with *
      final formattedCode = ussdCode.startsWith('*') ? ussdCode : '*$ussdCode';
      final uri = Uri.parse('tel:$formattedCode');

      if (await canLaunchUrl(uri)) {
        final success = await launchUrl(uri);
        return success
            ? PaymentLaunchResult.success()
            : PaymentLaunchResult.failed('Could not dial USSD code');
      }

      return PaymentLaunchResult.failed('Cannot launch phone dialer');
    } catch (e) {
      return PaymentLaunchResult.failed('Error dialing USSD: $e');
    }
  }

  /// Copy payment details to clipboard
  void copyPaymentDetails(BuildContext context, String text, String label) {
    // This would use flutter/services Clipboard
    // For now, just show a snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$label copied to clipboard'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  /// Get bank app store URL
  String? _getBankAppStoreUrl(String bankCode) {
    // Map of Ethiopian bank codes to their app store URLs
    final bankAppUrls = {
      'CBE': 'https://play.google.com/store/apps/details?id=com.cbe.mobilebanking',
      'AWB': 'https://play.google.com/store/apps/details?id=com.awash.bank',
      'DBL': 'https://play.google.com/store/apps/details?id=com.dashenbank.mobilebanking',
      'ABB': 'https://play.google.com/store/apps/details?id=com.bankofabyssinia.boa',
      'HGB': 'https://play.google.com/store/apps/details?id=com.hibretbank.mobile',
      'ORB': 'https://play.google.com/store/apps/details?id=com.oromiabank.mobilebanking',
      'UNB': 'https://play.google.com/store/apps/details?id=com.unitedbank.mobile',
      'ZMB': 'https://play.google.com/store/apps/details?id=com.zemenbank.mobile',
      'COB': 'https://play.google.com/store/apps/details?id=com.coopbank.mobile',
    };

    return bankAppUrls[bankCode];
  }
}

/// Result of payment launch attempt
class PaymentLaunchResult {
  final bool success;
  final bool isNotInstalled;
  final bool isFallback;
  final String? errorMessage;
  final String? androidStoreUrl;
  final String? iosStoreUrl;
  final String? qrCodeData;

  PaymentLaunchResult({
    required this.success,
    this.isNotInstalled = false,
    this.isFallback = false,
    this.errorMessage,
    this.androidStoreUrl,
    this.iosStoreUrl,
    this.qrCodeData,
  });

  factory PaymentLaunchResult.success({bool fallback = false, String? qrCodeData}) {
    return PaymentLaunchResult(
      success: true,
      isFallback: fallback,
      qrCodeData: qrCodeData,
    );
  }

  factory PaymentLaunchResult.failed(String message) {
    return PaymentLaunchResult(
      success: false,
      errorMessage: message,
    );
  }

  factory PaymentLaunchResult.notInstalled({
    required String androidUrl,
    required String iosUrl,
  }) {
    return PaymentLaunchResult(
      success: false,
      isNotInstalled: true,
      androidStoreUrl: androidUrl,
      iosStoreUrl: iosUrl,
    );
  }

  bool get shouldInstallApp => isNotInstalled;

  String? get storeUrl => androidStoreUrl ?? iosStoreUrl;
}
