import 'package:flutter/material.dart';
import 'package:lab2/Lab7/lab72.dart';
import 'package:lab2/lab6/lab61.dart';
import 'package:lab2/lab6/lab63.dart';
import 'package:lab2/lab9/logoutSuccess.dart';

class Demo92 extends StatefulWidget {
  const Demo92({super.key});

  @override
  State<Demo92> createState() => _Demo92State();
}

class _Demo92State extends State<Demo92> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(text: "contact"),
              Tab(text: "about")
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Are you Sure you want to logout"),
                          content: Text("Content"),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => logoutS(),
                                    ),
                                  );
                                },
                                child: Text("Ok")),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Cancel"))
                          ],
                        );
                      });
                },
                icon: Icon(Icons.logout))
          ],
        ),
        body: TabBarView(
          children: [Demo8(), Demo(), Demo3()],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                  child: Container(

                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/1653286178phpXPRlva.jpeg"))
                      ),
              )),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Demo92(),
                  ));
                },
              ),
              ListTile(
                title: Text("contact"),
                leading: Icon(Icons.contact_emergency),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Demo(),
                  ));
                },
              ),
              ListTile(
                title: Text("about"),
                leading: Icon(Icons.abc_outlined),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Demo3(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
