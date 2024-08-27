import 'package:flutter/material.dart';

class CustomSearchIcom extends StatelessWidget {
  const CustomSearchIcom({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        icon,
        size: 28,
      ),
    );
  }
}
