import 'package:flutter/material.dart';
import 'package:matus_flutter/widgets/MyButtonSatate.dart';
import 'package:matus_flutter/widgets/MyCustomeInpute.dart';
import 'package:matus_flutter/widgets/MyForm.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: const Text("Mi app"),
          backgroundColor: Colors.deepPurpleAccent,
          foregroundColor: Colors.white,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [

              Mycustomeinpute(text: "Escribe", read: false),
              
              SizedBox(height: 20),

              Mycustomeinpute(text: "Hola2", read: true,),

              SizedBox(height: 20),

              MyButtonState(),

              SizedBox(height: 20),

              MyForm(),

            ],
          ),
        ),

      ),
    );
  }
}