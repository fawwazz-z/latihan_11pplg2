import 'package:flutter/material.dart';
class Customtextfield extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Color labelcolor; 
  final bool pass;
  const Customtextfield({super.key, required this.controller,
  required this.label,required this.labelcolor, required this.pass});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        obscureText: pass,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: labelcolor)
        ),
      ),
    );
  }
}