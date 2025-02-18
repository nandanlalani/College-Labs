import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class demo81 extends StatefulWidget {
  const demo81({super.key});

  @override
  State<demo81> createState() => _demo81State();
}

class _demo81State extends State<demo81> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 800,
          width: 800,
          decoration: BoxDecoration(
            color: Colors.red,
            image:DecorationImage(image: NetworkImage("https://png.pngtree.com/thumb_back/fh260/background/20211031/pngtree-abstract-bg-image_914283.png",),
              fit: BoxFit.fill,
            ),
              borderRadius: BorderRadius.circular(25)
          ),
            ),
          ),
    );
  }
}
