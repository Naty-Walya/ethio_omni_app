import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreatePostScreen extends ConsumerStatefulWidget {
  const CreatePostScreen({super.key});

  @override
  ConsumerState<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends ConsumerState<CreatePostScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _weightController = TextEditingController();
  final _pickupController = TextEditingController();
  final _deliveryController = TextEditingController();
  final _budgetController = TextEditingController();

  String _cargoType = 'GENERAL';
  bool _enableAuction = true;

  @override
  void dispose() {
    _titleController.dispose();
    _weightController.dispose();
    _pickupController.dispose();
    _deliveryController.dispose();
    _budgetController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Implement API call
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Freight post created successfully!')),
      );
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post a Load'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Cargo Title',
                  hintText: 'e.g., Construction Materials',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) return 'Title is required';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _cargoType, // ignore: deprecated_member_use
                decoration: const InputDecoration(
                  labelText: 'Cargo Type',
                ),
                items: const [
                  DropdownMenuItem(value: 'GENERAL', child: Text('General Cargo')),
                  DropdownMenuItem(value: 'PERISHABLE', child: Text('Perishable')),
                  DropdownMenuItem(value: 'FRAGILE', child: Text('Fragile')),
                  DropdownMenuItem(value: 'HEAVY', child: Text('Heavy Equipment')),
                  DropdownMenuItem(value: 'HAZARDOUS', child: Text('Hazardous')),
                ],
                onChanged: (value) => setState(() => _cargoType = value!),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Weight (kg)',
                  suffixText: 'kg',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) return 'Weight is required';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _pickupController,
                decoration: const InputDecoration(
                  labelText: 'Pickup Location',
                  prefixIcon: Icon(Icons.location_on),
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) return 'Pickup location is required';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _deliveryController,
                decoration: const InputDecoration(
                  labelText: 'Delivery Location',
                  prefixIcon: Icon(Icons.location_on_outlined),
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) return 'Delivery location is required';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _budgetController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Budget (ETB)',
                  prefixText: 'ETB ',
                ),
              ),
              const SizedBox(height: 24),
              SwitchListTile(
                title: const Text('Enable Reverse Auction'),
                subtitle: const Text('Drivers will bid down to win your load'),
                value: _enableAuction,
                onChanged: (value) => setState(() => _enableAuction = value),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('Post Load'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
