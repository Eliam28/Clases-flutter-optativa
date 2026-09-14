import 'package:flutter/material.dart';

class Customeinput extends StatelessWidget{
  final String label;
  final String hint;
  final bool readOnly;

  const Customeinput({super.key, required this.label, required this.hint ,this.readOnly = true});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(label),
        hint: Text(hint),
        enabled: readOnly,
        border: OutlineInputBorder()
      ),
    );
  }
}