import 'package:flutter/material.dart';

class Demo121 extends StatelessWidget {
  const Demo121({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 300,color: Colors.blue,),
            Container(height: 300,color: Colors.red,),
            Container(height: 300,color: Colors.green,),
            Container(height: 300,color: Colors.black,),
            Container(height: 300,color: Colors.pink,),
            Container(height: 300,color: Colors.purple,),
            Container(height: 300,color: Colors.white,),

          ],
        ),
      ),
    );
  }
}
