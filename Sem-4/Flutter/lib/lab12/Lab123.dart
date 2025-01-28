import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Demo123 extends StatefulWidget {
  const Demo123({super.key});

  @override
  State<Demo123> createState() => _Demo123State();
}

class _Demo123State extends State<Demo123> {
  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    String d1 = DateFormat("dd/MM/yyyy").format(date);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(

            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                    child: Text(d1,style: TextStyle(fontSize: 100,color: Colors.red),)),
                Container(
                    height: 150,
                    child: Text(DateFormat("dd/MM/yyyy").format(date),style: TextStyle(fontSize: 100,color: Colors.red),)),
                Container(
                    height: 150,
                    child: Text(DateFormat("dd-MM-yyyy").format(date),style: TextStyle(fontSize: 100,color: Colors.red),)),
                Container(
                    height: 150,
                    child: Text(DateFormat("dd-MMM-yyyy").format(date),style: TextStyle(fontSize: 100,color: Colors.red),)),
                Container(
                    height: 150,
                    child: Text(DateFormat("dd-MM-yy").format(date),style: TextStyle(fontSize: 100,color: Colors.red),)),
                Container(
                    height: 150,
                    child: Text(DateFormat("dd MMM, yyyy").format(date),style: TextStyle(fontSize: 100,color: Colors.red),)),
                Container(
                    height: 150,
                    child: Text(DateFormat("dd/MM/yyyy").format(date),style: TextStyle(fontSize: 100,color: Colors.red),)),
              ],
            ),
        ),
      ),
    );
  }
}
