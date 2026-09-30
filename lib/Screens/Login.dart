import 'package:flutter/material.dart';
import 'package:matus_flutter/Widgets/MyButtonNavigationBar.dart';

class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("lOGIN"),),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Presione el boton"),

            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => Mybuttonnavigationbar())
                );
              }, 
              child: Text("Presione")
            )
          ],
        ),
      ),
    );
  }
}