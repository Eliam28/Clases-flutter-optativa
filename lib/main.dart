import 'package:flutter/material.dart';
import 'package:matus_flutter/widgets/customeInput.dart';
import 'package:matus_flutter/widgets/customeText.dart';
import 'package:matus_flutter/widgets/operationButtom.dart';
import 'package:matus_flutter/widgets/resetButtom.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Calculator()
    );
  }
}

class Calculator extends StatefulWidget{
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _calculatorState();
}

class _calculatorState extends State<Calculator>{

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  String reultado = "";
  String accion = "";

  void ActualizarResultado(String nuevoResultado, String nuevaAccion){
    setState(() {
      reultado = nuevoResultado;
      accion = nuevaAccion;
    });
  }

  void ResetearResulado(){
    setState(() {
      reultado = "";
      accion = "";
    });
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Calcualdora"),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

     body: SingleChildScrollView(
      child: Column(
        children: [

          SizedBox(height: 30),

          Custometext(text: "Resultado $reultado"),

          SizedBox(height: 10),

          Custometext(text: "Acción $accion"),

          SizedBox(height: 30),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [

                Row(
                  children: [
                    Expanded(child: Customeinput(controller: controller1, label: "Numero 1")),
                    SizedBox(width: 20),
                    Expanded(child: Customeinput(controller: controller2, label: "Numero 2")),
                  ],
                ),

                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Operationbuttom(symbol: "+", num1Controller: controller1, num2Controller: controller2, setResultado: ActualizarResultado),
                    Operationbuttom(symbol: "-", num1Controller: controller1, num2Controller: controller2, setResultado: ActualizarResultado),
                    Operationbuttom(symbol: "*", num1Controller: controller1, num2Controller: controller2, setResultado: ActualizarResultado),
                    Operationbuttom(symbol: "/", num1Controller: controller1, num2Controller: controller2, setResultado: ActualizarResultado),
                  ],
                ),

                const SizedBox(height: 30),

                Resetbuttom(controller1: controller1, controller2: controller2, onReset: ResetearResulado),

              ],
            ),
          )
        ],
      ),
     ),


    );
  }



}