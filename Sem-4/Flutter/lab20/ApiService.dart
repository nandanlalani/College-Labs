import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/lab20/userclass.dart';

String baseURL = "https://67b5667da9acbdb38ed2212f.mockapi.io/users";

Future<List<User>> getAllUsers() async {
  var res = await http.get(Uri.parse(baseURL));
  List<dynamic> data = jsonDecode(res.body);
  List<User> users = [];
  data.forEach((element) {
    users.add(User.toUser(element));
  },);
  return users;
}

Future<User> getUserById(String id) async{
  var res = await http.get(Uri.parse("$baseURL/$id"));
  dynamic data = jsonDecode(res.body);
  User user = User.toUser(data);
  return user;
}

Future<void> deleteUserById(String id) async{
  var res = await http.delete(Uri.parse("$baseURL/$id"));
  print(res.body);
}

Future<void> insertUser(User user) async{
  var res = await http.post(Uri.parse(baseURL),
  body: user.toMap()
  );
  print(res.body);
}