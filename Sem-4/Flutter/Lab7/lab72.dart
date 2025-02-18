import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Demo8 extends StatefulWidget {
  const Demo8({super.key});

  @override
  State<Demo8> createState() => _Demo8State();
}

class _Demo8State extends State<Demo8> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController phoneController1 = TextEditingController();
  String value = "Nandan";
  String value1 = "hi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(value, style: TextStyle(fontSize: 100,fontFamily: "ABC", color: Colors.orange),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            print("click value: ${phoneController.text}");
            setState(() {
              value = phoneController.text;
            });
          }, child: Text('Click')),


          Text(value1, style: GoogleFonts.aboreto(fontSize: 200),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: phoneController1,
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            print("click value: ${phoneController1.text}");
            setState(() {
              value1 = phoneController1.text;
            });
          }, child: Text('Click'))

        ],
      ),
    );
  }
}
