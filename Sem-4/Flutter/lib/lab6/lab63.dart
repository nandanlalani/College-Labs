import 'package:flutter/material.dart';

class Demo3 extends StatelessWidget {
  const Demo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.red,)),
                    Expanded(child: Container(color: Colors.green,)),
                    Expanded(child: Container(color: Colors.blue,)),
                  ],
          )),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.brown,)),
                  Expanded(child: Container(color: Colors.grey,)),
                  Expanded(child: Container(color: Colors.purple,)),
                ],
              )),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.black,)),
                  Expanded(child: Container(color: Colors.yellow,)),
                  Expanded(child: Container(color: Colors.pink,)),
                ],
              ))
        ],

      ),
    );
  }
}
