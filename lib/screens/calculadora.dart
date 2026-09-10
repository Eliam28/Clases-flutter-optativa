import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {

  final String? nombre;

  const Calculadora({
    super.key,
    this.nombre,
  });

  @override
  Widget build(BuildContext context) {

    Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    String nombreParams = nombre ?? args?["nombre"] ?? "No hay nombre";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [

            Center(
              child: Text(
                nombreParams,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}