import 'package:flutter/material.dart';
import 'package:lab2/Lab7/lab72.dart';
import 'package:lab2/lab6/lab61.dart';
import 'package:lab2/lab9/lab92.dart';

class logoutS extends StatefulWidget {
  const logoutS({super.key});

  @override
  State<logoutS> createState() => _logoutSState();
}

class _logoutSState extends State<logoutS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Logout Sucessful",
              style: TextStyle(fontSize: 200),
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Demo92(),));
            }, child: Text("Home"))
          ],
        ),
      ),
    );
  }
}
