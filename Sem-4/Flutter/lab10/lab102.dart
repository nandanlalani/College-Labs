//Registration Screen


import 'package:flutter/material.dart';
import 'package:lab2/lab10/lab101.dart';

class demo102 extends StatefulWidget {
  const demo102({super.key});

  @override
  State<demo102> createState() => _demo102State();
}

class _demo102State extends State<demo102> {
  GlobalKey<FormState> _key = new GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration Page"),),
      body: Center(
        child: Container(
          height: 800,
          width: 600,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _key,
              child: Column(
                children: [
                  Image.network("https://e7.pngegg.com/pngimages/101/397/png-clipart-brand-logo-technology-registration-form-text-red.png"),
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
                    controller: passwordController,
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

                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: isHide,
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Confirm Password"),
                        suffixIcon: IconButton(icon: Icon(
                            isHide ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isHide = !isHide;
                            });
                          },)
                    ),
                    validator: (value) {
                      if(passwordController.text.isEmpty){
                        return "Please enter Password";
                      } else if(value == null || value.isEmpty){
                        return "Confirm password is required";
                      } else if (passwordController.text.length < 8 || value.length <8) {
                        return "password must be at least 8 character";
                      } else if (passwordController.text != confirmPasswordController.text) {
                        return "Password and Confirm Password does not match";
                      } else {
                        return null;
                      }
                    },
                  ),
                  ElevatedButton(onPressed: () {
                    if (_key.currentState!.validate()) {
                      print("Registered successfully");
                      Navigator.of(context).pop();
                    }
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
