import 'package:flutter/material.dart';

class AddTransactionScreen extends StatelessWidget {
  const AddTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('افزودن تراکنش')),
      body: const Center(child: Text('فرم افزودن تراکنش اینجاست')),
    );
  }
}
