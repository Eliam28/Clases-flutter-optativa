import 'package:flutter/material.dart';
import 'package:matus_flutter/calculadora2/ActionButton2.dart';
import 'package:matus_flutter/calculadora2/NumberInput2.dart';
import 'package:matus_flutter/calculadora2/input2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController inputIzq = TextEditingController();
    TextEditingController inputDer = TextEditingController();
    TextEditingController inputRespuesta = TextEditingController();

    return MaterialApp(
      home: Scaffold(

       appBar: AppBar(
        title: const Text("Calculadora 2"),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
       ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Row(
              children: [
                Expanded(child: Input2(input: inputIzq, labelText: "Numero 1",)),
                const SizedBox(width: 16,),
                Expanded(child: Input2(input: inputDer, labelText: "Numero 2",))
              ],
            ),

            const SizedBox(height: 26,),

            Center(
              child: Input2(input: inputRespuesta, labelText: "Respuesta", readOnly: true,),
            ),

            const SizedBox(height: 26,),

            Row(
              children: [
                Expanded(child: Numberinput2(inputIzq: inputIzq, inputDer: inputDer, labelNumber: "1")),
                const SizedBox(width: 16,),
                Expanded(child: Numberinput2(inputIzq: inputIzq, inputDer: inputDer, labelNumber: "2")),
                const SizedBox(width: 16,),
                Expanded(child: Numberinput2(inputIzq: inputIzq, inputDer: inputDer, labelNumber: "3")),
              ],
            ),

            const SizedBox(height: 26,),

            Center(child: Actionbutton2(inputIzq: inputIzq, inputDer: inputDer, inputRespuesta: inputRespuesta, labelAction: "CLEAR"),)
          ],
        ),
      ),
        
      ),
    );
  }
}