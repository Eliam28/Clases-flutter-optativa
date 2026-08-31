import 'package:flutter/material.dart';

class Operationbuttom extends StatelessWidget{

  final String symbol;
  final TextEditingController num1Controller;
  final TextEditingController num2Controller;
  final Function(String resultado, String accion) setResultado;

  const Operationbuttom({
    super.key,
    required this.symbol,
    required this.num1Controller,
    required this.num2Controller,
    required this.setResultado
  });

  void calcular(BuildContext context){

    String texto1 = num1Controller.text.trim();
    String texto2 = num2Controller.text.trim();

    if(texto1.isEmpty||texto2.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Ingrese ambos numeros de favor"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
        )
      );
      return;
    }

    double? num1 = double.tryParse(texto1);
    double? num2 = double.tryParse(texto2);

    if(num1 == null|| num2 == null){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Ingrese nuermos validos"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
        )
      );
      return;
    }

    double resultado = 0;
    String accion = "";

    switch (symbol){

      case "+":
        resultado = num1 + num2;
        accion = "Sumar";
        break;

      case "-":
        resultado =  num1 - num2;
        accion = "Restar";
        break;
      
      case "*":
        resultado = num1*num2;
        accion = "Multiplicar";
        break;

      case "/":

        if(num2 == 0){
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
        
        resultado = num1/num2;
        accion = "Dividir";
        break;
    }
    setResultado(resultado.toString(), accion);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {calcular(context);},

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        minimumSize: Size(50, 50)
      ),
 
      child: Text(
        symbol,
        style: TextStyle(
          fontSize: 22
        ),

      )
    );
  }
}