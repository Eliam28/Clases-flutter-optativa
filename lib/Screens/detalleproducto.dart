import 'package:flutter/material.dart';

class Detalleproducto extends StatelessWidget{
  final int id ;
  const Detalleproducto({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Producto #$id"),),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Estas en el detalle del producto")
          ],
        ),
      ),
    );
  }
}