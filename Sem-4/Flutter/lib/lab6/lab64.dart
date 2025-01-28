import 'package:flutter/material.dart';

class Demo4 extends StatelessWidget {
  const Demo4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Expanded(child: Container(color: Colors.grey),),
                  Expanded(child: Container(color: Colors.orange)),
                  Expanded(child: Container(color: Colors.blue.shade900)),
                ]
          )),
          Expanded(
              child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.pink),flex: 2,),
                    Expanded(child: Container(color: Colors.green),flex: 2,),
                    Expanded(child: Container(color: Colors.blueGrey.shade200)),
                  ]
              )),
          Expanded(
              child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.red)),
                    Expanded(child: Container(color: Colors.yellow),flex: 3,),
                    Expanded(child: Container(color: Colors.purple),flex: 2,),
                  ]
              )),
        ],
      ),
    );
  }
}
