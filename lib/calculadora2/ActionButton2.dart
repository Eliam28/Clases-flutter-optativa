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
      return;
    }
    
    if(widget.inputIzq.text.isEmpty || widget.inputDer.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Ingrese los dos numeros"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
        )
      );
      return;
    }
    
    int number1 = int.parse(widget.inputIzq.text);
    int number2 = int.parse(widget.inputDer.text);

    if(widget.labelAction == "+"){
      int resultado = number1+number2;
      widget.inputRespuesta.text = "$resultado (Suma)";
    } else if (widget.labelAction == "-"){
      int resultado = number1-number2;
      widget.inputRespuesta.text = "$resultado (Resta)";
    } else if (widget.labelAction == "*"){
      int resultado = number1*number2;
      widget.inputRespuesta.text = "$resultado (Multi)";
    } else if (widget.labelAction == "/"){

      if (number2 == 0){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("No se puede dividir entre 0"),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 3),
            behavior: SnackBarBehavior.floating,
          )
        );
        return;
      }
      double resultado = number1/number2;
      widget.inputRespuesta.text = "$resultado (Divi)";
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