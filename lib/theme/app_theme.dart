import 'package:flutter/material.dart';
import 'package:matus_flutter/theme/theme_boton_preligro.dart';

class AppTheme {
  static const colorprimary = Colors.red;
  static const fondo = Color(0xFFF5F5FF);

  static ThemeData get themedata {
    return ThemeData(
      primaryColor: colorprimary,
      scaffoldBackgroundColor: fondo,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
        )
      )
    );
  }
  static final buttomPeligro = ThemeBotonPeligro;
}