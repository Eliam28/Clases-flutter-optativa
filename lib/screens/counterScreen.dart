import 'package:flutter/material.dart';
import 'package:matus_flutter/widgets/counterbottom.dart';

class Counterscreen extends StatelessWidget{
  final String nombre;
  
  const Counterscreen({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(nombre),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Counterbottom(),
          ],
        ),
      ),
    );
  }
}