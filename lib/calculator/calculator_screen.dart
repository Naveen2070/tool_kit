import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: const Center(
        child: Text(
          'Implement your calculator UI here',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}