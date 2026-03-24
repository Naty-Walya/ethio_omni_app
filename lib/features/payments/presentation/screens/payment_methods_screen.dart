import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/payments/data/models/payment_model.dart';
import 'package:ethio_omni_app/features/payments/presentation/providers/payment_provider.dart';
import 'package:ethio_omni_app/core/services/payment_launcher_service.dart';
import 'package:url_launcher/url_launcher.dart';

/// Screen for selecting payment method
class PaymentMethodsScreen extends ConsumerStatefulWidget {
  final double amount;
  final String description;
  final PaymentPurpose purpose;

  const PaymentMethodsScreen({
    super.key,
    required this.amount,
    required this.description,
    this.purpose = PaymentPurpose.walletTopUp,
  });

  @override
  ConsumerState<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

enum PaymentPurpose {
  walletTopUp,
  freightPayment,
  subscription,
}

class _PaymentMethodsScreenState extends ConsumerState<PaymentMethodsScreen> {
  PaymentMethod? _selectedMethod;
  bool _isLoading = false;
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Payment Method'),
      ),
      body: Column(
        children: [
          // Amount summary
          Container(
            padding: const EdgeInsets.all(16),
            color: theme.colorScheme.primaryContainer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount to Pay',
                      style: theme.textTheme.bodyMedium,
                    ),
                    Text(
                      '${widget.amount.toStringAsFixed(2)} ETB',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.account_balance_wallet,
                  size: 48,
                  color: theme.colorScheme.primary,
                ),
              ],
            ),
          ),

          // Error message
          if (_errorMessage != null)
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.red.shade50,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(Icons.error_outline, color: Colors.red.shade700),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _errorMessage!,
                      style: TextStyle(color: Colors.red.shade700),
                    ),
                  ),
                ],
              ),
            ),

          // Payment methods list
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Mobile Money Section
                _buildSectionHeader('Mobile Money'),
                _buildPaymentOption(
                  method: PaymentMethod.telebirr,
                  title: 'Telebirr',
                  subtitle: 'Pay via Telebirr mobile money',
                  icon: Icons.phone_android,
                  color: Colors.blue,
                ),
                _buildPaymentOption(
                  method: PaymentMethod.telebirrDirect,
                  title: 'Telebirr Direct',
                  subtitle: 'Open Telebirr app directly',
                  icon: Icons.app_shortcut,
                  color: Colors.blue.shade700,
                ),
                _buildPaymentOption(
                  method: PaymentMethod.cbeBirr,
                  title: 'CBE Birr',
                  subtitle: 'Pay via CBE Birr',
                  icon: Icons.account_balance,
                  color: Colors.orange,
                ),

                const SizedBox(height: 16),

                // ET-SWITCH Section
                _buildSectionHeader('ET-SWITCH Payment Gateway'),
                _buildPaymentOption(
                  method: PaymentMethod.etSwitchCard,
                  title: 'Debit/Credit Card',
                  subtitle: 'Pay with your bank card via ET-SWITCH',
                  icon: Icons.credit_card,
                  color: Colors.green,
                ),
                _buildPaymentOption(
                  method: PaymentMethod.etSwitchBank,
                  title: 'Bank Transfer',
                  subtitle: 'Transfer from any Ethiopian bank',
                  icon: Icons.account_balance,
                  color: Colors.teal,
                ),
                _buildPaymentOption(
                  method: PaymentMethod.etSwitchMobile,
                  title: 'Mobile Banking',
                  subtitle: 'Pay via your bank mobile app',
                  icon: Icons.mobile_friendly,
                  color: Colors.indigo,
                ),

                const SizedBox(height: 16),

                // Other Methods
                _buildSectionHeader('Other Methods'),
                _buildPaymentOption(
                  method: PaymentMethod.cash,
                  title: 'Cash',
                  subtitle: 'Pay cash on delivery',
                  icon: Icons.money,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          // Pay button
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(10),
                  blurRadius: 8,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: SafeArea(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _selectedMethod != null && !_isLoading
                      ? _processPayment
                      : null,
                  child: _isLoading
                      ? const SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text(
                          'Proceed to Payment',
                          style: TextStyle(fontSize: 16),
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.grey[600],
        ),
      ),
    );
  }

  Widget _buildPaymentOption({
    required PaymentMethod method,
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
  }) {
    final isSelected = _selectedMethod == method;

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      elevation: isSelected ? 2 : 0,
      color: isSelected ? color.withAlpha(20) : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isSelected
            ? BorderSide(color: color, width: 2)
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: () => setState(() => _selectedMethod = method),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: color.withAlpha(30),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: color),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              if (isSelected)
                Icon(Icons.check_circle, color: color)
              else
                Icon(Icons.circle_outlined, color: Colors.grey[400]),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _processPayment() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      switch (_selectedMethod) {
        case PaymentMethod.telebirr:
          await _processTelebirr();
          break;
        case PaymentMethod.telebirrDirect:
          await _processTelebirrDirect();
          break;
        case PaymentMethod.etSwitchCard:
          await _processEtSwitchCard();
          break;
        case PaymentMethod.etSwitchBank:
          await _processEtSwitchBank();
          break;
        case PaymentMethod.etSwitchMobile:
          await _processEtSwitchMobile();
          break;
        case PaymentMethod.cbeBirr:
        case PaymentMethod.bankTransfer:
        case PaymentMethod.cash:
          _showComingSoon();
          break;
        default:
          setState(() => _errorMessage = 'Payment method not implemented');
      }
    } catch (e) {
      setState(() => _errorMessage = e.toString());
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _processTelebirr() async {
    final phoneController = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Telebirr Payment'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter your Telebirr phone number:'),
            const SizedBox(height: 16),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: '09XX XXX XXX',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Continue'),
          ),
        ],
      ),
    );

    if (confirmed == true && phoneController.text.isNotEmpty) {
      final notifier = ref.read(paymentNotifierProvider.notifier);
      final success = await notifier.depositViaTelebirr(
        phoneNumber: phoneController.text,
        amount: widget.amount,
        description: widget.description,
      );

      if (success && mounted) {
        final state = ref.read(paymentNotifierProvider);
        if (state.pendingUssdCode != null) {
          _showUssdDialog(state.pendingUssdCode!);
        } else {
          _showSuccessDialog('Telebirr payment initiated successfully!');
        }
      }
    }
  }

  Future<void> _processTelebirrDirect() async {
    final notifier = ref.read(paymentNotifierProvider.notifier);
    final payment = await notifier.initiateTelebirrDirectPayment(
      amount: widget.amount,
      description: widget.description,
    );

    if (payment != null && mounted) {
      final result = await PaymentLauncherService.instance.launchTelebirrApp(payment);

      if (result.success) {
        _showSuccessDialog('Telebirr app opened. Complete payment in the app.');
      } else if (result.shouldInstallApp) {
        _showInstallAppDialog('Telebirr', result.storeUrl!);
      } else {
        setState(() => _errorMessage = result.errorMessage ?? 'Could not launch Telebirr');
      }
    }
  }

  Future<void> _processEtSwitchCard() async {
    final notifier = ref.read(paymentNotifierProvider.notifier);
    final response = await notifier.depositViaEtSwitchCard(
      amount: widget.amount,
      description: widget.description,
    );

    if (response != null && mounted) {
      final result = await PaymentLauncherService.instance.launchEtSwitchCardPayment(response);

      if (result.success) {
        _showSuccessDialog('Payment page opened. Complete payment in your browser.');
      } else {
        setState(() => _errorMessage = result.errorMessage ?? 'Could not launch payment');
      }
    }
  }

  Future<void> _processEtSwitchBank() async {
    final banks = await ref.read(paymentNotifierProvider.notifier).getEtSwitchBanks();

    if (!mounted) return;

    EtSwitchBank? selectedBank;
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Your Bank'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: banks.length,
            itemBuilder: (context, index) {
              final bank = banks[index];
              return ListTile(
                title: Text(bank.name),
                subtitle: Text(bank.shortName),
                onTap: () {
                  selectedBank = bank;
                  Navigator.pop(context);
                },
              );
            },
          ),
        ),
      ),
    );

    if (selectedBank != null && mounted) {
      final notifier = ref.read(paymentNotifierProvider.notifier);
      final response = await notifier.depositViaEtSwitchBankTransfer(
        bankCode: selectedBank!.code,
        amount: widget.amount,
        description: widget.description,
      );

      if (response != null && mounted) {
        final result = await PaymentLauncherService.instance.launchEtSwitchBankTransfer(response);

        if (result.success) {
          if (result.qrCodeData != null) {
            _showQrCodeDialog(result.qrCodeData!);
          } else {
            _showSuccessDialog('Bank transfer instructions opened.');
          }
        } else {
          setState(() => _errorMessage = result.errorMessage ?? 'Could not launch bank transfer');
        }
      }
    }
  }

  Future<void> _processEtSwitchMobile() async {
    final banks = await ref.read(paymentNotifierProvider.notifier).getEtSwitchBanks();
    final phoneController = TextEditingController();
    EtSwitchBank? selectedBank;

    if (!mounted) return;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Mobile Banking'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                hintText: '09XX XXX XXX',
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Select your bank:'),
            const SizedBox(height: 8),
            SizedBox(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: banks.where((b) => b.supportsMobileBanking).length,
                itemBuilder: (context, index) {
                  final bank = banks.where((b) => b.supportsMobileBanking).elementAt(index);
                  return ListTile(
                    title: Text(bank.name),
                    leading: selectedBank == bank
                        ? const Icon(Icons.check_circle, color: Colors.green)
                        : const Icon(Icons.account_balance),
                    onTap: () {
                      selectedBank = bank;
                      Navigator.pop(context, true);
                    },
                  );
                },
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );

    if (confirmed == true &&
        selectedBank != null &&
        phoneController.text.isNotEmpty &&
        mounted) {
      final notifier = ref.read(paymentNotifierProvider.notifier);
      final response = await notifier.depositViaEtSwitchMobileBanking(
        bankCode: selectedBank!.code,
        amount: widget.amount,
        phoneNumber: phoneController.text,
        description: widget.description,
      );

      if (response != null && mounted) {
        final result = await PaymentLauncherService.instance.launchEtSwitchMobileBanking(
          response,
          selectedBank!.code,
        );

        if (result.success) {
          _showSuccessDialog('Mobile banking app opened.');
        } else if (result.shouldInstallApp) {
          _showInstallAppDialog('${selectedBank!.name} Mobile Banking', result.storeUrl!);
        } else {
          setState(() => _errorMessage = result.errorMessage ?? 'Could not launch mobile banking');
        }
      }
    }
  }

  void _showUssdDialog(String ussdCode) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Complete Payment'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Dial this USSD code to complete payment:'),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ussdCode,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'monospace',
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('USSD code copied')),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () async {
                await PaymentLauncherService.instance.launchUssdCode(ussdCode);
              },
              icon: const Icon(Icons.dialer_sip),
              label: const Text('Dial Now'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }

  void _showQrCodeDialog(String qrData) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Scan to Pay'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Scan this QR code with your banking app:'),
            const SizedBox(height: 16),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.qr_code, size: 80),
                    const SizedBox(height: 8),
                    Text(
                      qrData,
                      style: const TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showInstallAppDialog(String appName, String storeUrl) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('$appName Not Installed'),
        content: Text('Please install $appName to continue with payment.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              final uri = Uri.parse(storeUrl);
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            },
            child: const Text('Install'),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.check_circle, color: Colors.green, size: 48),
        title: const Text('Payment Initiated'),
        content: Text(message),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context, true);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showComingSoon() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Coming Soon'),
        content: const Text('This payment method will be available soon.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}