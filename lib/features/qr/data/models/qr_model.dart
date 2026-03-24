import 'dart:convert';
import 'dart:typed_data';

class QRCodeData {
  final String jobId;
  final String type; // 'PICKUP' or 'DELIVERY'
  final int timestamp;
  final String signature;

  QRCodeData({
    required this.jobId,
    required this.type,
    required this.timestamp,
    required this.signature,
  });

  factory QRCodeData.fromJson(Map<String, dynamic> json) {
    return QRCodeData(
      jobId: json['jobId'] as String,
      type: json['type'] as String,
      timestamp: json['timestamp'] as int,
      signature: json['signature'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'jobId': jobId,
      'type': type,
      'timestamp': timestamp,
      'signature': signature,
    };
  }

  /// Decode QR code from scanned data (base64)
  static QRCodeData? fromScannedData(String scannedData) {
    try {
      final decoded = utf8.decode(base64Decode(scannedData));
      final json = jsonDecode(decoded) as Map<String, dynamic>;
      return QRCodeData.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  /// Encode to base64 string for QR code generation
  String toBase64() {
    final jsonStr = jsonEncode(toJson());
    return base64Encode(utf8.encode(jsonStr));
  }

  bool get isPickup => type == 'PICKUP';
  bool get isDelivery => type == 'DELIVERY';
}

class QRCodeResponse {
  final bool success;
  final String? qrCode;
  final String? dataUrl;
  final String message;

  QRCodeResponse({
    required this.success,
    this.qrCode,
    this.dataUrl,
    required this.message,
  });

  factory QRCodeResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    return QRCodeResponse(
      success: json['success'] as bool,
      qrCode: data['qrCode'] as String?,
      dataUrl: data['dataUrl'] as String?,
      message: json['message'] as String? ?? '',
    );
  }
}

class QRVerificationResult {
  final bool valid;
  final String? jobId;
  final String? type;
  final String message;
  final dynamic job;

  QRVerificationResult({
    required this.valid,
    this.jobId,
    this.type,
    required this.message,
    this.job,
  });

  factory QRVerificationResult.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    return QRVerificationResult(
      valid: json['success'] as bool,
      jobId: data['jobId'] as String?,
      type: data['type'] as String?,
      message: json['message'] as String? ?? '',
      job: data['job'],
    );
  }

  bool get isPickup => type == 'PICKUP';
  bool get isDelivery => type == 'DELIVERY';
}

class QRCodeStatus {
  final bool pickupConfirmed;
  final bool deliveryConfirmed;
  final bool? pickupQrCode;
  final bool? deliveryQrCode;

  QRCodeStatus({
    required this.pickupConfirmed,
    required this.deliveryConfirmed,
    this.pickupQrCode,
    this.deliveryQrCode,
  });

  factory QRCodeStatus.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    return QRCodeStatus(
      pickupConfirmed: data['pickupConfirmed'] as bool? ?? false,
      deliveryConfirmed: data['deliveryConfirmed'] as bool? ?? false,
      pickupQrCode: data['pickupQrCode'] as bool?,
      deliveryQrCode: data['deliveryQrCode'] as bool?,
    );
  }

  bool get hasPickupQR => pickupQrCode == true;
  bool get hasDeliveryQR => deliveryQrCode == true;
}
