import 'package:flutter/material.dart';

class Custometext extends StatelessWidget{
  final String text;
  const Custometext({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold
      ),
    );
  }
}