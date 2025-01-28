import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PG1 extends StatelessWidget {
  const PG1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Text("Page 1",style: TextStyle(fontSize: 100),),
          ElevatedButton(onPressed: () {
            Navigator.of(context).pop();
          }, child: Text("Back")),
        ],
      ),
    );
  }
}
