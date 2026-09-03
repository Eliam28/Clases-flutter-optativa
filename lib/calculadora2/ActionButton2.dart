import 'package:flutter/material.dart';

class Actionbutton2 extends StatefulWidget{

  final TextEditingController inputIzq;
  final TextEditingController inputDer;
  final TextEditingController inputRespuesta;
  final String labelAction;

  const Actionbutton2({
    super.key, 
    required this.inputIzq, 
    required this.inputDer, 
    required this.inputRespuesta, 
    required this.labelAction
  });

  @override
  State<Actionbutton2> createState() => _ActionButton();
}

class _ActionButton extends State<Actionbutton2> {

  void setAction(){
    if(widget.labelAction == "CLEAR"){
      widget.inputIzq.text = "";
      widget.inputDer.text = "";
      widget.inputRespuesta.text = "";

      //Hacer los demas action
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: setAction, 
      child: Text(
        widget.labelAction,
      )
    );
  }
}