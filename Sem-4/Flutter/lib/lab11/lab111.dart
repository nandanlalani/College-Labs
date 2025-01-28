import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab2/lab11/lab113.dart';
import 'package:lab2/lab11/lab114.dart';

class Demo111 extends StatelessWidget {
  const Demo111({super.key});


  @override
  Widget build(BuildContext context) {
    List<String> cities = [
      "Ahmedabad",
      "Surat",
      "Vadodara",
      "Rajkot",
      "Bhavnagar",
      "Jamnagar",
      "Junagadh",
      "Gandhinagar",
      "Anand",
      "Nadiad",
      "Morbi",
      "Mehsana",
      "Navsari",
      "Vapi",
      "Bharuch",
      "Palanpur",
      "Porbandar",
      "Godhra",
      "Dahod",
      "Valsad"
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Demo114(),
            ),
          );
        }, icon: Icon(Icons.list,color: Colors.white,)),
          IconButton(onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Demo113(),
              ),
            );
          }, icon: Icon(Icons.grid_3x3,color: Colors.white,)),
        ],
        title: Text("List View"),
                backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
            return(Text(cities[index],style: TextStyle(fontSize: 100),));
          },),
        ),
      ),
    );
  }
}
