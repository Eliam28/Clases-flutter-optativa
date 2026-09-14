import 'package:flutter/material.dart';
import 'package:matus_flutter/screens/counterScreen.dart';
import 'package:matus_flutter/screens/formScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:homePage(),
      routes: {
        "/formulario" : (context) => const Formscreen(),
      },
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Menu de navegación"),
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [

              Center(child: 
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/formulario", arguments: {"nombre":"Formulario"});
                  }, 
                  child: Text("Formulario")
                ),
              ),

              SizedBox(height: 20,),

              Center(child: 
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Counterscreen(nombre: "Sumador"))
                    );
                  }, 
                  child: const Text("Sumador")
                ),
              ),

            ],
          ),
        ),

        
    );
  }

}