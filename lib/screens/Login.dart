import 'package:flutter/material.dart';
import 'package:matus_flutter/screens/pantalla1.dart';
import 'package:matus_flutter/widgets/MyBottomNavigatorBar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const MyBottomNavigatorBar(),
              ),
            );
          },
          child: const Text("Pantalla 1"),
        ),
      ),
    );
  }
}