import 'package:flutter/material.dart';

class Customeinput extends StatelessWidget{
  final String label;
  final TextEditingController controller;

  const Customeinput({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      keyboardType: TextInputType.numberWithOptions(decimal: true),
      
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder()
      ),
    );
  }


}