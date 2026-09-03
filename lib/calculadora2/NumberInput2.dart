import 'package:flutter/material.dart';

class Numberinput2 extends StatefulWidget{

  final TextEditingController inputIzq;
  final TextEditingController inputDer;
  final String labelNumber;

  const Numberinput2({super.key, required this.inputIzq, required this.inputDer, required this.labelNumber});

  @override
  State<Numberinput2> createState() => _NumberInput2();
}

class _NumberInput2 extends State<Numberinput2>{

  void setNumber(){
    widget.inputIzq.text += widget.labelNumber;
    //Hacer el manejo de poner numeros complejos al escribir
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: setNumber, 
      child: Text(
        widget.labelNumber
      )
    );
  }
}