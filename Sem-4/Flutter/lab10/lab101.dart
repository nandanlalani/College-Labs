//Login Screen




import 'package:flutter/material.dart';
import 'package:lab2/lab10/lab102.dart';

class Demo101 extends StatefulWidget {
  Demo101({super.key});

  @override
  State<Demo101> createState() => _DemoState();
}

class _DemoState extends State<Demo101> {
  GlobalKey<FormState> _key = new GlobalKey<FormState>();

  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Container(
          height: 800,
          width: 500,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("https://thumbs.dreamstime.com/b/vector-illustration-isolated-white-background-login-button-icon-login-icon-button-127004144.jpg"),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Username")
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "username is required";
                      } else if (value.length < 8) {
                        return "username must be at least 8 character";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: isHide,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Password"),
                        suffixIcon: IconButton(icon: Icon(
                            isHide ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isHide = !isHide;
                            });
                          },)
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "password is required";
                      } else if (value.length < 8) {
                        return "password must be at least 8 character";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 10,width: 100,),
                  ElevatedButton(onPressed: () {
                    if (_key.currentState!.validate()) {
                      print("login successfully");
                    }
                  }, child: Text("Log In")),
                  Text(""),
                  ElevatedButton(onPressed: () {

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => demo102(),
                        ),
                      );

                  }, child: Text("Register"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}