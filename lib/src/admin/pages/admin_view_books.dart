import 'package:flutter/material.dart';

class AdminViewBook extends StatelessWidget {
  const AdminViewBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'View Books',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
