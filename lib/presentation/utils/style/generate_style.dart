import 'package:flutter/material.dart';

class GenerateStyle {
  static InputDecoration inputDecoration(String hint) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black26),
        borderRadius: BorderRadius.circular(5),
      ),
      hintText: hint,
    );
  }
}
