import 'package:flutter/material.dart';

class Demo2 extends StatelessWidget{
  const Demo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Container(color: Colors.black,)),
          Expanded(child: Container(color: Colors.white,)),
          Expanded(child: Container(color: Colors.blue,)),
        ],
      ),
    );
  }


}