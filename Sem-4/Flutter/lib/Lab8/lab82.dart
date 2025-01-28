import 'package:flutter/material.dart';

class demo82 extends StatefulWidget {
  const demo82({super.key});

  @override
  State<demo82> createState() => _demo82State();
}

class _demo82State extends State<demo82> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/pexels-padrinan-255379.jpg",),fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(25),color: Colors.grey),
              height: 800,
              width: 800,

        ),
      ),
    );
  }
}
