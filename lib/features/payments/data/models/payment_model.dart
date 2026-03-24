import 'package:flutter/material.dart';

enum PaymentMethod {
  telebirr,
  cbeBirr,
  bankTransfer,
  cash,
}

enum TransactionType {
  deposit,
  withdrawal,
  payment,
  refund,
  earning,
  escrowHold,
  escrowRelease,
  fee,
  bonus,
}

enum TransactionStatus {
  pending,
  completed,
  failed,
  cancelled,
  inEscrow,
}

extension TransactionStatusExtension on TransactionStatus {
  String get displayName {
    switch (this) {
      case TransactionStatus.pending:
        return 'Pending';
      case TransactionStatus.completed:
        return 'Completed';
      case TransactionStatus.failed:
        return 'Failed';
      case TransactionStatus.cancelled:
        return 'Cancelled';
      case TransactionStatus.inEscrow:
        return 'In Escrow';
    }
  }

  Color get color {
    switch (this) {
      case TransactionStatus.pending:
        return Colors.orange;
      case TransactionStatus.completed:
        return Colors.green;
      case TransactionStatus.failed:
        return Colors.red;
      case TransactionStatus.cancelled:
        return Colors.grey;
      case TransactionStatus.inEscrow:
        return Colors.blue;
    }
  }
}

class TransactionModel {
  final String id;
  final String walletId;
  final TransactionType type;
  final double amount;
  final String currency;
  final String? description;
  final String? reference;
  final TransactionStatus status;
  final PaymentMethod? paymentMethod;
  final String? paymentPhone;
  final String? externalReference;
  final DateTime? completedAt;
  final String? relatedId;
  final String? relatedType;
  final DateTime createdAt;
  final DateTime updatedAt;

  TransactionModel({
    required this.id,
    required this.walletId,
    required this.type,
    required this.amount,
    required this.currency,
    this.description,
    this.reference,
    required this.status,
    this.paymentMethod,
    this.paymentPhone,
    this.externalReference,
    this.completedAt,
    this.relatedId,
    this.relatedType,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'] as String,
      walletId: json['walletId'] as String,
      type: _parseTransactionType(json['type'] as String),
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      description: json['description'] as String?,
      reference: json['reference'] as String?,
      status: _parseTransactionStatus(json['status'] as String),
      paymentMethod: json['paymentMethod'] != null
          ? _parsePaymentMethod(json['paymentMethod'] as String)
          : null,
      paymentPhone: json['paymentPhone'] as String?,
      externalReference: json['externalReference'] as String?,
      completedAt: json['completedAt'] != null
          ? DateTime.parse(json['completedAt'] as String)
          : null,
      relatedId: json['relatedId'] as String?,
      relatedType: json['relatedType'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'walletId': walletId,
      'type': _typeToString(type),
      'amount': amount,
      'currency': currency,
      'description': description,
      'reference': reference,
      'status': _statusToString(status),
      'paymentMethod': paymentMethod != null ? _methodToString(paymentMethod!) : null,
      'paymentPhone': paymentPhone,
      'externalReference': externalReference,
      'completedAt': completedAt?.toIso8601String(),
      'relatedId': relatedId,
      'relatedType': relatedType,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  // Helper getters
  bool get isCredit {
    return type == TransactionType.deposit ||
        type == TransactionType.earning ||
        type == TransactionType.refund ||
        type == TransactionType.bonus;
  }

  bool get isDebit {
    return type == TransactionType.withdrawal ||
        type == TransactionType.payment ||
        type == TransactionType.fee ||
        type == TransactionType.escrowHold;
  }

  IconData get icon {
    switch (type) {
      case TransactionType.deposit:
        return Icons.arrow_downward;
      case TransactionType.withdrawal:
        return Icons.arrow_upward;
      case TransactionType.payment:
        return Icons.payment;
      case TransactionType.refund:
        return Icons.replay;
      case TransactionType.earning:
        return Icons.work;
      case TransactionType.escrowHold:
        return Icons.lock;
      case TransactionType.escrowRelease:
        return Icons.lock_open;
      case TransactionType.fee:
        return Icons.account_balance;
      case TransactionType.bonus:
        return Icons.card_giftcard;
    }
  }

  Color get amountColor {
    if (isCredit) return Colors.green;
    if (isDebit) return Colors.red;
    return Colors.grey;
  }

  String get formattedAmount {
    final sign = isCredit ? '+' : isDebit ? '-' : '';
    return '$sign${amount.toStringAsFixed(2)} $currency';
  }

  // Parse methods
  static TransactionType _parseTransactionType(String type) {
    switch (type) {
      case 'DEPOSIT':
        return TransactionType.deposit;
      case 'WITHDRAWAL':
        return TransactionType.withdrawal;
      case 'PAYMENT':
        return TransactionType.payment;
      case 'REFUND':
        return TransactionType.refund;
      case 'EARNING':
        return TransactionType.earning;
      case 'ESCROW_HOLD':
        return TransactionType.escrowHold;
      case 'ESCROW_RELEASE':
        return TransactionType.escrowRelease;
      case 'FEE':
        return TransactionType.fee;
      case 'BONUS':
        return TransactionType.bonus;
      default:
        return TransactionType.payment;
    }
  }

  static String _typeToString(TransactionType type) {
    switch (type) {
      case TransactionType.deposit:
        return 'DEPOSIT';
      case TransactionType.withdrawal:
        return 'WITHDRAWAL';
      case TransactionType.payment:
        return 'PAYMENT';
      case TransactionType.refund:
        return 'REFUND';
      case TransactionType.earning:
        return 'EARNING';
      case TransactionType.escrowHold:
        return 'ESCROW_HOLD';
      case TransactionType.escrowRelease:
        return 'ESCROW_RELEASE';
      case TransactionType.fee:
        return 'FEE';
      case TransactionType.bonus:
        return 'BONUS';
    }
  }

  static TransactionStatus _parseTransactionStatus(String status) {
    switch (status) {
      case 'PENDING':
        return TransactionStatus.pending;
      case 'COMPLETED':
        return TransactionStatus.completed;
      case 'FAILED':
        return TransactionStatus.failed;
      case 'CANCELLED':
        return TransactionStatus.cancelled;
      case 'IN_ESCROW':
        return TransactionStatus.inEscrow;
      default:
        return TransactionStatus.pending;
    }
  }

  static String _statusToString(TransactionStatus status) {
    switch (status) {
      case TransactionStatus.pending:
        return 'PENDING';
      case TransactionStatus.completed:
        return 'COMPLETED';
      case TransactionStatus.failed:
        return 'FAILED';
      case TransactionStatus.cancelled:
        return 'CANCELLED';
      case TransactionStatus.inEscrow:
        return 'IN_ESCROW';
    }
  }

  static PaymentMethod _parsePaymentMethod(String method) {
    switch (method) {
      case 'TELEBIRR':
        return PaymentMethod.telebirr;
      case 'CBE_BIRR':
        return PaymentMethod.cbeBirr;
      case 'BANK_TRANSFER':
        return PaymentMethod.bankTransfer;
      case 'CASH':
        return PaymentMethod.cash;
      default:
        return PaymentMethod.telebirr;
    }
  }

  static String _methodToString(PaymentMethod method) {
    switch (method) {
      case PaymentMethod.telebirr:
        return 'TELEBIRR';
      case PaymentMethod.cbeBirr:
        return 'CBE_BIRR';
      case PaymentMethod.bankTransfer:
        return 'BANK_TRANSFER';
      case PaymentMethod.cash:
        return 'CASH';
    }
  }
}

class WalletModel {
  final String id;
  final String userId;
  final double balance;
  final String currency;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<TransactionModel>? recentTransactions;

  WalletModel({
    required this.id,
    required this.userId,
    required this.balance,
    required this.currency,
    required this.createdAt,
    required this.updatedAt,
    this.recentTransactions,
  });

  factory WalletModel.fromJson(Map<String, dynamic> json) {
    return WalletModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      balance: (json['balance'] as num).toDouble(),
      currency: json['currency'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      recentTransactions: json['recentTransactions'] != null
          ? (json['recentTransactions'] as List)
              .map((t) => TransactionModel.fromJson(t as Map<String, dynamic>))
              .toList()
          : null,
    );
  }

  String get formattedBalance {
    return '${balance.toStringAsFixed(2)} $currency';
  }

  bool get hasBalance => balance > 0;
}

class PaymentInitiationResponse {
  final bool success;
  final String? transactionId;
  final String? ussdCode;
  final String message;

  PaymentInitiationResponse({
    required this.success,
    this.transactionId,
    this.ussdCode,
    required this.message,
  });

  factory PaymentInitiationResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    return PaymentInitiationResponse(
      success: json['success'] as bool,
      transactionId: data['transactionId'] as String?,
      ussdCode: data['ussdCode'] as String?,
      message: json['message'] as String? ?? data['message'] as String? ?? '',
    );
  }
}

class PaymentStatusResponse {
  final bool success;
  final TransactionStatus status;
  final String message;

  PaymentStatusResponse({
    required this.success,
    required this.status,
    required this.message,
  });

  factory PaymentStatusResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    return PaymentStatusResponse(
      success: json['success'] as bool,
      status: TransactionModel._parseTransactionStatus(data['status'] as String),
      message: data['message'] as String? ?? '',
    );
  }
}

class TransactionPagination {
  final int total;
  final int limit;
  final int offset;

  TransactionPagination({
    required this.total,
    required this.limit,
    required this.offset,
  });

  factory TransactionPagination.fromJson(Map<String, dynamic> json) {
    return TransactionPagination(
      total: json['total'] as int,
      limit: json['limit'] as int,
      offset: json['offset'] as int,
    );
  }

  bool get hasMore => offset + limit < total;
}
