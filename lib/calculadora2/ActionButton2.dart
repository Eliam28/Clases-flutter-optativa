import 'package:flutter/material.dart';
import 'package:matus_flutter/classProps/ActionButtonProps.dart';

class Actionbutton2 extends StatefulWidget{

  final Actionbuttonprops props;
  final String labelAction;

  const Actionbutton2({
    super.key, 
    required this.props,
    required this.labelAction
  });

  @override
  State<Actionbutton2> createState() => _ActionButton();
}

class _ActionButton extends State<Actionbutton2> {

  void setAction(){

    if(widget.labelAction == "CLEAR"){
      widget.props.inputIzq.text = "";
      widget.props.inputDer.text = "";
      widget.props.inputRespuesta.text = "";
      return;
    }
    
    if(widget.props.inputIzq.text.isEmpty || widget.props.inputDer.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Ingrese los dos numeros"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
        )
      );
      return;
    }
    
    double? number1 = double.tryParse(widget.props.inputIzq.text);
    double? number2 = double.tryParse(widget.props.inputDer.text);

    if(number1 == null || number2 == null){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Ingrese numeros validos"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
        )
      );
      return;
    }

    double resultado = 0;
    String accion = "";


    switch (widget.labelAction){
      case "+":
        resultado = number1+number2;
        accion = "Suma";
        break;
      case "-":
        resultado = number1-number2;
        accion = "Resta";
        break;
      case "*":
        resultado = number1*number2;
        accion = "Multi";
        break;
      case "/":
        if (number2 == 0){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("No se puede dividir entre 0"),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 3),
              behavior: SnackBarBehavior.floating,
            )
          );
          return;
        }

        resultado = number1/number2;
        accion = "Divi";
        break;
    }

    widget.props.inputRespuesta.text = "$resultado ($accion)";
    
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