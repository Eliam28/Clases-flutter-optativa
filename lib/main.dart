import 'package:flutter/material.dart';
import 'package:matus_flutter/screens/calculadora.dart';
import 'package:matus_flutter/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themedata,
      home: const HomeScreen(),

      routes: {
        "/calculadora": (context) => const Calculadora(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi primera app"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),

            ElevatedButton(
              style: AppTheme.buttomPeligro,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Calculadora(nombre: "Eliam",),
                  ),
                );
              },
              child: const Text("Ir a calculadora"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/calculadora",
                  arguments: {"nombre": "Juan"}
                );
              },
              child: const Text("Calculadora"),
            ),
          ],
        ),
      ),
    );
  }
}