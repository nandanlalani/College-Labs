import 'package:flutter/material.dart';
import 'package:lab2/Crud/crudd.dart';
import 'package:lab2/Database/ui_for_db.dart';
import 'package:lab2/Lab7/lab71.dart';
import 'package:lab2/Lab7/lab72.dart';
import 'package:lab2/Lab8/lab82.dart';
import 'package:lab2/Lab8/lab83.dart';
import 'package:lab2/lab10/lab101.dart';
import 'package:lab2/lab10/lab102.dart';
import 'package:lab2/lab11/Grid.dart';
import 'package:lab2/lab11/lab111.dart';
import 'package:lab2/lab11/lab112.dart';
import 'package:lab2/lab11/lab113.dart';
import 'package:lab2/lab12/Lab121.dart';
import 'package:lab2/lab12/Lab122.dart';
import 'package:lab2/lab12/Lab123.dart';
import 'package:lab2/lab12/Lab124.dart';
import 'package:lab2/lab13/lab131.dart';
import 'package:lab2/lab17/lab171.dart';
import 'package:lab2/lab6/lab61.dart';
import 'package:lab2/lab9/lab91.dart';
import 'package:lab2/lab9/lab92.dart';
import 'package:lab2/runner.dart';

import 'Lab8/lab81.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Demo121(),
    );
  }


}