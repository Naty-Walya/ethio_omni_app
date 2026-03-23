import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
class WalletModel with _$WalletModel {
  const factory WalletModel({
    required String id,
    required String userId,
    @Default(0.0) double balance,
    @Default('ETB') String currency,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);
}

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String id,
    required String walletId,
    required String type,
    required double amount,
    @Default('ETB') String currency,
    String? description,
    String? reference,
    @Default('PENDING') String status,
    String? relatedId,
    String? relatedType,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

// Deposit Request
class DepositRequest {
  final double amount;
  final String method; // 'telebirr' or 'cbe_birr'

  DepositRequest({required this.amount, required this.method});

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'method': method,
    };
  }
}

// Withdraw Request
class WithdrawRequest {
  final double amount;
  final String accountNumber;
  final String accountName;

  WithdrawRequest({
    required this.amount,
    required this.accountNumber,
    required this.accountName,
  });

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'accountNumber': accountNumber,
      'accountName': accountName,
    };
  }
}

// Transfer Request
class TransferRequest {
  final String phone;
  final double amount;
  final String? description;

  TransferRequest({
    required this.phone,
    required this.amount,
    this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'amount': amount,
      'description': description,
    };
  }
}
