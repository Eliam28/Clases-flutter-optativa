import 'package:flutter/material.dart';

class Carritos extends StatelessWidget{
  const Carritos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carrito"),),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Carrito1")
          ],
        ),
      ),

    );
  }
}