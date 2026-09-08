import 'package:flutter/material.dart';

class Inputprops {
  final TextEditingController input;
  final String labelText;
  final bool readOnly;
  final FocusNode? focusNode;

  const Inputprops({required this.input, required this.labelText, this.readOnly = false, this.focusNode});

}