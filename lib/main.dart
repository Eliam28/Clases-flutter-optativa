import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("App de practica"),
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

              TextField(
                decoration: InputDecoration(
                  label: Text("Nombre"),
                  hint: Text("Escriba su nombre"),
                  border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 16),

              TextField(
                decoration: InputDecoration(
                  label: Text("Apellido"),
                  hint: Text("Escriba su apellido"),
                  border: OutlineInputBorder()
                ),
              ),

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
                      onPressed: null,
                      icon: const Icon(Icons.access_time),
                      color: Colors.red,
                      iconSize: 50,
                    ),

                    IconButton(
                      onPressed: null,
                      icon: const Icon(Icons.abc_outlined),
                      color: Colors.blue,
                      iconSize: 50,
                    ),

                    IconButton(
                      onPressed: null,
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
              )

            ],
          ),
        ),


      ),
    );
  }
}