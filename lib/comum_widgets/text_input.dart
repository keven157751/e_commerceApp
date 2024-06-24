import 'package:flutter/material.dart';

class InputText extends TextFormField {
  InputText({
    super.key,
    super.controller,
    required this.labelText,
    required this.suffixIcon,
    required this.filled,
  });

  final String labelText;
  final Icon suffixIcon;
  final bool filled;

  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
        // labelText: 'Enter your email',
        labelText: labelText,
        filled: filled,
      ),
    );
  }
}
