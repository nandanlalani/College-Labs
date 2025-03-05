import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class JsonDisplayScreen extends StatefulWidget {
  @override
  _JsonDisplayScreenState createState() => _JsonDisplayScreenState();
}

class _JsonDisplayScreenState extends State<JsonDisplayScreen> {
  List<dynamic> data = [];

  Future<void> loadJsonData() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    final List parsedList = json.decode(jsonString);

    setState(() {
      data = parsedList;
    });
  }

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON"),
        backgroundColor: Colors.blueAccent,
      ),
      body: data.isEmpty
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 5,
        ),
        itemCount: data.length,
        itemBuilder: (context, index) {
          var item = data[index];
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              elevation: 4,
              child: Container(

                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(3),

                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text('ID: ${item['id']}', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text('Name: ${item['name']}', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text('Age: ${item['age']}', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
