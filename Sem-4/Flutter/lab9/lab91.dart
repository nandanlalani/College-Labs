import 'package:flutter/material.dart';
import 'package:lab2/Lab7/lab72.dart';
import 'package:lab2/lab6/lab61.dart';
import 'package:lab2/lab6/lab62.dart';
import 'package:lab2/lab6/lab63.dart';

class Demo91 extends StatefulWidget {
  const Demo91({super.key});

  @override
  State<Demo91> createState() => _Demo91State();
}

class _Demo91State extends State<Demo91> {
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
              Tab(
                text: "Tab1",
              ),
              Tab(
                text: "Tab2",
              )
            ],
          ),
        ),
        body: TabBarView(children: [Demo8(),Demo(),Demo3()],),
      ),
    );
  }
}
