import 'package:flutter/material.dart';

class Numberinput2 extends StatefulWidget{

  final TextEditingController inputIzq;
  final TextEditingController inputDer;
  final String labelNumber;

  final FocusNode focusIzq;
  final FocusNode focusDer;

  const Numberinput2({super.key, required this.inputIzq, required this.inputDer, required this.labelNumber, required this.focusIzq, required this.focusDer});

  @override
  State<Numberinput2> createState() => _NumberInput2();
}

class _NumberInput2 extends State<Numberinput2>{

  void setNumber(){
    if (widget.focusIzq.hasFocus){
      widget.inputIzq.text += widget.labelNumber;

    } else if(widget.focusDer.hasFocus){
      widget.inputDer.text += widget.labelNumber;
    }
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