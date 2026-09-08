import 'package:flutter/material.dart';
import 'package:matus_flutter/classProps/NumberProps.dart';

class Numberinput2 extends StatefulWidget{

  final Numberprops props;
  final String labelNumber;

  const Numberinput2({super.key, required this.props , required this.labelNumber});

  @override
  State<Numberinput2> createState() => _NumberInput2();
}

class _NumberInput2 extends State<Numberinput2>{

  void setNumber(){
    if (widget.props.focusIzq.hasFocus){
      widget.props.inputIzq.text += widget.labelNumber;

    } else if(widget.props.focusDer.hasFocus){
      widget.props.inputDer.text += widget.labelNumber;
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