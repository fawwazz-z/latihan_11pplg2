import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String myText;
  final Color myTextColor;
  final VoidCallback onPressed;
  final Color? backgroundColor; // background tombol (opsional)

  const Custombutton({
    super.key,
    required this.myText,
    required this.myTextColor,
    required this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: myTextColor,
        backgroundColor: backgroundColor ?? Colors.grey[300],
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 3,
      ),
      child: Text(
        myText,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: myTextColor,
        ),
      ),
    );
  }
}
