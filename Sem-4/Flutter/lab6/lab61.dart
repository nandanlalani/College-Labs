import 'package:flutter/material.dart';

class Demo extends StatelessWidget{
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.red,)),
          Expanded(child: Container(color: Colors.white,)),
          Expanded(child: Container(color: Colors.blue,)),
        ],
      ),
    );
  }


}