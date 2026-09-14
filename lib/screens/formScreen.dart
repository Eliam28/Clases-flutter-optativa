import 'package:flutter/material.dart';
import 'package:matus_flutter/widgets/customeInput.dart';

class Formscreen extends StatelessWidget{

  const Formscreen({super.key});

  @override
  Widget build(BuildContext context) {

    final Map<String,dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>?;
    String nombre = args?["nombre"] ?? "Sin nombre";

    return Scaffold(

      appBar: AppBar(
        title: Text(nombre),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              Center(child: 
                Text(
                  "Formulario de la app",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

              SizedBox(height: 16),

             Customeinput(label: "Nombre", hint: "Ingrese su nombre"),

              SizedBox(height: 16),

              Customeinput(label: "Apellido", hint: "Ingrese su apellido", readOnly: true,),

              SizedBox(height: 16),


              ElevatedButton(
                onPressed: () => {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Formulario guardado"),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                    )
                  )                  
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  minimumSize: Size(200, 50)
                ),
                child: Text("Guardar"),
              ),

              SizedBox(height: 16),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.access_time),
                      color: Colors.red,
                      iconSize: 50,
                    ),

                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.abc_outlined),
                      color: Colors.blue,
                      iconSize: 50,
                    ),

                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.access_alarm),
                      color: Colors.green,
                      iconSize: 50,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              const Text("Esta encuesta es para"),

              Image.network(
                "https://thumb.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/1920px-User_icon_2.svg.png?utm_source=es.wikipedia.org&utm_campaign=imageinfo&utm_content=thumbnail",
                height: 200,
                width: 200,
              ),

              SizedBox(height: 20,),

            ],
          ),
        ),

    );
  }
}