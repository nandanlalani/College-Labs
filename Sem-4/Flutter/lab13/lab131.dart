import 'package:flutter/material.dart';
import 'package:lab2/Lab8/lab83.dart';
import 'package:lab2/lab12/Lab121.dart';
import 'package:lab2/lab12/Lab122.dart';
import 'package:lab2/lab13/lab134.dart';
import 'package:lab2/lab6/lab64.dart';
import 'home.dart';
import 'pg1.dart';
import 'pg2.dart';

class Demo131 extends StatefulWidget {
  const Demo131({super.key});

  @override
  State<Demo131> createState() => _Demo131State();
}

class _Demo131State extends State<Demo131> {
  int indx=0;

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      Home(),FormValidationPage(),PG2()
    ];
    return Scaffold(
      body: list[indx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indx,
        onTap: (value) {
          setState(() {
            indx = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.abc),label: "Page1"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: "Page2"),
        ],

      ),
    );
  }
}
