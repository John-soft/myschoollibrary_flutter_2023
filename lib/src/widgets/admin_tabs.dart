import 'package:flutter/material.dart';

class AdminTabs extends StatelessWidget {
  const AdminTabs(
      {super.key, required this.onTap, required this.icon, required this.text});
  final VoidCallback onTap;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }
}
