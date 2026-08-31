import 'package:flutter/material.dart';

class Resetbuttom extends StatelessWidget{
  final TextEditingController controller1;
  final TextEditingController controller2;
  final VoidCallback onReset;

  const Resetbuttom({super.key, required this.controller1, required this.controller2, required this.onReset});

  void resetear(){
    controller1.clear();
    controller2.clear();
    onReset();
  }



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onReset, 
      

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        minimumSize: Size(200, 50)
      ),

      child: Text(
        "Resetear",
        style: TextStyle(
          fontSize: 22
        ),
      ),

    );
  }

}