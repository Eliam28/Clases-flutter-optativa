import 'package:flutter/material.dart';
import 'package:matus_flutter/screens/Login.dart';
import 'package:matus_flutter/screens/Pantalla2.dart';
import 'package:matus_flutter/screens/pantalla1.dart';
import 'package:matus_flutter/themes/app_theme.dart';
import 'package:matus_flutter/widgets/MyBottomNavigatorBar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}