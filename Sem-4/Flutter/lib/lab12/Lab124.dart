import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Demo124 extends StatefulWidget {
  const Demo124({super.key});

  @override
  State<Demo124> createState() => _Demo124State();
}

class _Demo124State extends State<Demo124> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String d = DateFormat("dd/MM/yyyy").format(date);
    return Scaffold(
      body: Center(
        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(d.toString(),style: TextStyle(fontSize: 100),),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? d = await showDatePicker(
                        context: context,
                        initialDate:  date,
                        firstDate: DateTime(1000),
                        lastDate: DateTime(4000));

                    if(d != null && d != date){
                      setState(() {
                        date = d;
                      });
                    }
                  },
                  child: Text("Select Date"))
            ],
          ),
        ),
      ),
    );
  }
}

