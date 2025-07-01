import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تراکنش‌ها')),
      body: const Center(child: Text('لیست تراکنش‌ها اینجا نمایش داده میشه')),
    );
  }
}
