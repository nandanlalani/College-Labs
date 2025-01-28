import 'package:flutter/material.dart';

class Demo122 extends StatelessWidget {
  const Demo122({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Container(height: 300,color: Colors.blue,),
                Container(height: 300,color: Colors.grey,),
                Container(height: 400,color: Colors.green,
                  child: ListView.builder(
                    itemCount: cities.length,
                    itemBuilder: (context, index) {
                      return Text(cities[index],style: TextStyle(fontSize: 100),);
                    },),
                ),
                Container(height: 300,color: Colors.black,            ),
                Container(height: 500,color: Colors.pink,
                  child: GridView.builder(
                      itemCount: cities.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 4),
                      itemBuilder: (context, index) {
                        return Text(cities[index],style: TextStyle(fontSize: 100,color: Colors.white),);
                      },),
                ),
                Container(height: 300,color: Colors.purple,),
                Container(height: 300,color: Colors.white,),
                Container(height: 300,color: Colors.purple,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}