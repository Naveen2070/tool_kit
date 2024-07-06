import 'package:flutter/material.dart';
import 'package:tool_kit/calculator/calculator_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  // Define icons for the grid
  final List<IconData> _icons = [
    Icons.calculate,
    Icons.camera,
    Icons.calendar_today,
    // Add more icons as needed
  ];

  // Handle icon tap actions
  void _onIconTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        // Navigate to calculator screen or open calculator dialog
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CalculatorScreen()),
        );
        break;
      case 1:
        // Handle camera icon tap
        // Implement logic for other icons similarly
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Utility App Suite'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: _icons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () => _onIconTap(context, index),
              child: Card(
                child: Center(
                  child: Icon(_icons[index], size: 50.0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
