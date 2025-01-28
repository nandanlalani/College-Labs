import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class demo83 extends StatefulWidget {
  const demo83({super.key});

  @override
  State<demo83> createState() => _demo83State();
}

class _demo83State extends State<demo83> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: Image.asset("assets/images/pexels-padrinan-255379.jpg",fit: BoxFit.fill,),
          ),
          Text("This is a birthday Card",style: TextStyle(fontSize: 100,color: Colors.red)),
          Center(
            child: Image.network("https://png.pngtree.com/thumb_back/fh260/background/20230213/pngtree-happy-birthday-pink-background-design-with-colorful-balloon-image_1580362.jpg"),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Text("Happy Birthday Nandan",style: TextStyle(fontSize: 100,color: Colors.blueGrey),)
            ,)
        ],
      ),
    );
  }
}
