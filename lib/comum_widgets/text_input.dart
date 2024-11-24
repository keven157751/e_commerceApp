import 'package:flutter/material.dart';

class InputText extends TextFormField {
  InputText({
    super.key,
    super.controller,
    required this.labelText,
    required this.filled,
  });

  final String labelText;
  // Icon? suffixIcon;
  final bool filled;

  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.lock_outline_rounded),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
        // labelText: 'Enter your email',
        hintText: 'Enter your password',
        filled: true,
      ),
    );
  }
}
