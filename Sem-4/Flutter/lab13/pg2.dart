import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab2/lab11/lab114.dart';

class PG2 extends StatelessWidget {
  const PG2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Page 2",
            style: TextStyle(fontSize: 100),
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Demo114();
                  },
                );
              },
              child: Text("Show")),
        ],
      ),
    );
  }
}
