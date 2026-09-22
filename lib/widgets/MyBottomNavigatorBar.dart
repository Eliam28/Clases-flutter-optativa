import 'package:flutter/material.dart';
import 'package:matus_flutter/screens/Pantalla2.dart';
import 'package:matus_flutter/screens/pantalla1.dart';
import 'package:matus_flutter/screens/pantalla3.dart';

class MyBottomNavigatorBar extends StatefulWidget {
  const MyBottomNavigatorBar({super.key});

  @override
  State<MyBottomNavigatorBar> createState() =>
      _MyBottomNavigatorBarState();
}

class _MyBottomNavigatorBarState
    extends State<MyBottomNavigatorBar> {

  int currentIndex = 0;

  final List<Widget> screens = const [
    Pantalla1(),
    Pantalla2(),
    Pantalla3(),
  ];

  final List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Inicio",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.calculate),
      label: "Calculadora",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.info),
      label: "Pantalla 3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: items,
      ),
    );
  }
}