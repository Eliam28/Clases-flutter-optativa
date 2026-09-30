import 'package:flutter/material.dart';
import 'package:matus_flutter/Screens/carritos.dart';
import 'package:matus_flutter/Screens/products.dart';

class Mybuttonnavigationbar extends StatefulWidget{
  const Mybuttonnavigationbar({super.key});

  @override
  State<Mybuttonnavigationbar> createState() => MybuttonnavigationbarState();
}

class MybuttonnavigationbarState extends State<Mybuttonnavigationbar> {

  int currentindex = 0;

  final List<Widget> screens = const [
    Products(),
    Carritos()
  ];

  final List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Carritos")
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: items
      ),

    );

  }
}