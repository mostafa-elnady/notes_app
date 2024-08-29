import 'package:flutter/material.dart';

class CustomSearchIcom extends StatelessWidget {
  const CustomSearchIcom({super.key, required this.icon, this.onPressed});

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
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
      ),
    );
  }
}
