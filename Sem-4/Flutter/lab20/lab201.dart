import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:path/path.dart';
import 'package:untitled/lab20/ApiService.dart';
import 'package:untitled/lab20/userclass.dart';

class Demo201 extends StatefulWidget {
  const Demo201({super.key});
  

  @override
  State<Demo201> createState() => _Demo201State();
}

class _Demo201State extends State<Demo201> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Server"),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder(
          future: getAllUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SpinKitWanderingCubes(
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.red : Colors.green,
                    ),
                  );
                },
                duration: Duration(seconds: 10),
              );
            }
            else if (snapshot.hasData) {
              List<dynamic> data = snapshot.data!;
              return GridView.builder(
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 5),
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blueAccent,
                                  width: 1)
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                  title: Text(data[index].id),
                                  subtitle: Text(data[index].name),
                                  trailing: Column(
                                    children: [
                                      IconButton(
                                          onPressed: () async {
                                            await deleteUserById(data[index].id);
                                            setState(() {

                                            });
                                          },
                                          icon: Icon(Icons.delete)),
                                    ],
                                  )
                              ),
                            ],
                          )
                      ),
                    ),
                    onTap: () {
                      showDialog(context: context, builder: (context) {
                        TextEditingController name = TextEditingController(text:data[index].name);
                        return AlertDialog(
                          title: Text("Edit"),
                          content: TextField(
                            controller: name,
                          ),
                          actions: [
                            ElevatedButton(onPressed: () async {
                              await updateUser(new User(id: data[index].id  , name: name.text));
                              Navigator.of(context).pop();
                            }, child: Text("Edit")),
                            ElevatedButton(onPressed: () {
                              Navigator.of(context).pop();
                            }, child: Text("Cancel"))
                          ],
                        );
                      },).then((value) {
                        setState(() {

                        });
                      },);
                    },
                  );
                },);
            }
            else {
              return Text("Error");
            }
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context) {
            TextEditingController name = TextEditingController();
            return AlertDialog(
              title: Text("Add"),
              content: TextField(
                controller: name,
              ),
              actions: [
                ElevatedButton(onPressed: () async {
                  await insertUser(User(id: "", name: name.text));
                  Navigator.of(context).pop();
                }, child: Text("Add"))
              ],
            );
          },).then((value) {
            setState(() {

            });
          },);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
