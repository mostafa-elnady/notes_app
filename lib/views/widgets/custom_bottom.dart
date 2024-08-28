import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.onTap, this.isLooding = false});

  final bool isLooding;

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLooding
              ? const CircularProgressIndicator(color: Colors.black)
              : const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
