import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ethio_omni_app/features/payments/presentation/providers/payment_provider.dart';
import 'package:ethio_omni_app/features/payments/data/models/payment_model.dart';

class WalletScreen extends ConsumerStatefulWidget {
  const WalletScreen({super.key});

  @override
  ConsumerState<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends ConsumerState<WalletScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(paymentNotifierProvider.notifier).loadMoreTransactions();
    }
  }

  @override
  Widget build(BuildContext context) {
    final wallet = ref.watch(walletProvider);
    final transactions = ref.watch(transactionsProvider);
    final isLoading = ref.watch(paymentLoadingProvider);
    final isLoadingMore = ref.watch(paymentNotifierProvider).isLoadingMore;
    final error = ref.watch(paymentNotifierProvider).error;
    final pendingPayment = ref.watch(pendingPaymentProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Wallet'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () => context.push('/payments/history'),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(paymentNotifierProvider.notifier).refresh();
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Balance Card
              _BalanceCard(balance: wallet?.balance ?? 0),
              const SizedBox(height: 24),

              // Action Buttons
              _ActionButtons(
                onDeposit: () => _showDepositDialog(context),
                onWithdraw: () => _showWithdrawDialog(context),
              ),
              const SizedBox(height: 24),

              // Pending Payment Alert
              if (pendingPayment != null)
                _PendingPaymentAlert(
                  transactionId: pendingPayment.$1!,
                  ussdCode: pendingPayment.$2,
                  onDismiss: () {
                    ref.read(paymentNotifierProvider.notifier).clearPendingPayment();
                  },
                ),

              // Recent Transactions
              _buildSectionHeader(context, 'Recent Transactions'),
              const SizedBox(height: 12),

              if (isLoading && transactions.isEmpty)
                const Center(child: CircularProgressIndicator())
              else if (error != null && transactions.isEmpty)
                _buildErrorWidget(context, error)
              else if (transactions.isEmpty)
                _buildEmptyState(context)
              else
                _TransactionsList(
                  transactions: transactions,
                  isLoadingMore: isLoadingMore,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        TextButton(
          onPressed: () => context.push('/payments/history'),
          child: const Text('See All'),
        ),
      ],
    );
  }

  Widget _buildErrorWidget(BuildContext context, String error) {
    return Center(
      child: Column(
        children: [
          const Icon(Icons.error_outline, size: 48, color: Colors.grey),
          const SizedBox(height: 8),
          Text(error, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => ref.read(paymentNotifierProvider.notifier).refresh(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Icon(Icons.receipt_long, size: 48, color: Colors.grey),
          const SizedBox(height: 8),
          Text(
            'No transactions yet',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  void _showDepositDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const DepositBottomSheet(),
    );
  }

  void _showWithdrawDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const WithdrawBottomSheet(),
    );
  }
}

class _BalanceCard extends StatelessWidget {
  final double balance;

  const _BalanceCard({required this.balance});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Balance',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withOpacity(0.8),
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'ETB ${balance.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  final VoidCallback onDeposit;
  final VoidCallback onWithdraw;

  const _ActionButtons({
    required this.onDeposit,
    required this.onWithdraw,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: onDeposit,
            icon: const Icon(Icons.add),
            label: const Text('Deposit'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: onWithdraw,
            icon: const Icon(Icons.arrow_outward),
            label: const Text('Withdraw'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class _PendingPaymentAlert extends ConsumerWidget {
  final String transactionId;
  final String? ussdCode;
  final VoidCallback onDismiss;

  const _PendingPaymentAlert({
    required this.transactionId,
    this.ussdCode,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: Colors.orange.shade50,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.pending, color: Colors.orange.shade700),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Payment Pending',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade900,
                        ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: onDismiss,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Please complete the payment on your phone.',
              style: TextStyle(color: Colors.orange.shade800),
            ),
            if (ussdCode != null) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'USSD Code: $ussdCode',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        // Copy to clipboard or dial
                      },
                      child: const Text('Dial'),
                    ),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 12),
            LinearProgressIndicator(
              value: null,
              backgroundColor: Colors.orange.shade100,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange.shade700),
            ),
            if (const bool.fromEnvironment('dart.vm.product') == false) ...[
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  ref.read(paymentNotifierProvider.notifier).simulatePaymentCompletion();
                },
                child: const Text('Simulate Completion (Dev Only)'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _TransactionsList extends StatelessWidget {
  final List<TransactionModel> transactions;
  final bool isLoadingMore;

  const _TransactionsList({
    required this.transactions,
    required this.isLoadingMore,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactions.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == transactions.length) {
          return const Padding(
            padding: EdgeInsets.all(16),
            child: Center(child: CircularProgressIndicator()),
          );
        }

        final transaction = transactions[index];
        return _TransactionTile(transaction: transaction);
      },
    );
  }
}

class _TransactionTile extends StatelessWidget {
  final TransactionModel transaction;

  const _TransactionTile({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: transaction.iconColor.withOpacity(0.1),
          child: Icon(transaction.icon, color: transaction.iconColor, size: 20),
        ),
        title: Text(
          transaction.description ?? transaction.type.toString().split('.').last,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          '${transaction.status.displayName} • ${_formatDate(transaction.createdAt)}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        trailing: Text(
          transaction.formattedAmount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: transaction.amountColor,
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}

// Deposit Bottom Sheet
class DepositBottomSheet extends ConsumerStatefulWidget {
  const DepositBottomSheet({super.key});

  @override
  ConsumerState<DepositBottomSheet> createState() => _DepositBottomSheetState();
}

class _DepositBottomSheetState extends ConsumerState<DepositBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _amountController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _phoneController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Deposit via TeleBirr',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                hintText: '09xxxxxxxx or +2519xxxxxxxx',
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter phone number';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _amountController,
              decoration: const InputDecoration(
                labelText: 'Amount (ETB)',
                hintText: 'Enter amount',
                prefixIcon: Icon(Icons.money),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter amount';
                }
                final amount = double.tryParse(value);
                if (amount == null || amount <= 0) {
                  return 'Please enter valid amount';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _isLoading ? null : _submit,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : const Text('Continue'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    final success = await ref.read(paymentNotifierProvider.notifier).depositViaTelebirr(
          phoneNumber: _phoneController.text,
          amount: double.parse(_amountController.text),
        );

    setState(() => _isLoading = false);

    if (success && mounted) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Payment initiated. Check your phone.')),
      );
    } else if (mounted) {
      final error = ref.read(paymentNotifierProvider).error;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error ?? 'Payment failed')),
      );
    }
  }
}

// Withdraw Bottom Sheet
class WithdrawBottomSheet extends ConsumerStatefulWidget {
  const WithdrawBottomSheet({super.key});

  @override
  ConsumerState<WithdrawBottomSheet> createState() => _WithdrawBottomSheetState();
}

class _WithdrawBottomSheetState extends ConsumerState<WithdrawBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _amountController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _phoneController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final balance = ref.watch(walletBalanceProvider);

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Withdraw to TeleBirr',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Available: ETB ${balance.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                hintText: '09xxxxxxxx or +2519xxxxxxxx',
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter phone number';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: 'Amount (ETB)',
                hintText: 'Enter amount',
                prefixIcon: const Icon(Icons.money),
                helperText: 'Max: ETB ${balance.toStringAsFixed(2)}',
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter amount';
                }
                final amount = double.tryParse(value);
                if (amount == null || amount <= 0) {
                  return 'Please enter valid amount';
                }
                if (amount > balance) {
                  return 'Amount exceeds balance';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _isLoading || balance <= 0 ? null : _submit,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : const Text('Withdraw'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    final success = await ref.read(paymentNotifierProvider.notifier).withdrawToTelebirr(
          phoneNumber: _phoneController.text,
          amount: double.parse(_amountController.text),
        );

    setState(() => _isLoading = false);

    if (success && mounted) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Withdrawal initiated successfully')),
      );
    } else if (mounted) {
      final error = ref.read(paymentNotifierProvider).error;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error ?? 'Withdrawal failed')),
      );
    }
  }
}
