import 'package:flutter/material.dart';
import 'package:matus_flutter/Screens/Login.dart';
import 'package:matus_flutter/Themes/AppTheme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Apptheme.themedata,
      home: Login()
    );
  }
}