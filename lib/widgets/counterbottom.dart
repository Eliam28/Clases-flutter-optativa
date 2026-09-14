import 'package:flutter/material.dart';

class Counterbottom extends StatefulWidget{
  const Counterbottom ({super.key});
  @override
  State<Counterbottom> createState() => _counterBottom();
}

class _counterBottom extends State<Counterbottom> {

  int contador = 0;

  void aumentar(){
    setState(() {
      contador += 1;
    });
  }

  void restar(){
    if(contador == 0){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("No puede ser menor a 0"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
        )
      );
      return;
    }

    setState(() {
      contador -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text("El numero es $contador"),

        SizedBox(height: 15,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              child:ElevatedButton(
                onPressed: aumentar, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.white,
                ),
                child: Text("+"),
              ),
           ),

           SizedBox(width: 10,),

            Expanded(
              child:ElevatedButton(
                onPressed: restar, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.white,
                ),
                child: Text("+"),
              ),
           ),
          ],
        ),


      ],
    );
  }
}