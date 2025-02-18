import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers to handle the text inputs
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Validation logic for the login form
  bool _isValid = true;

  void _login() {
    setState(() {
      // Simple validation: check if both fields are not empty
      if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
        _isValid = false;
      } else {
        _isValid = true;
        // If validation passes, perform your login action
        print("Username: ${usernameController.text}");
        print("Password: ${passwordController.text}");
        // Add your login API call or further navigation here
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Username TextField
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                errorText: _isValid ? null : "Username cannot be empty",
              ),
            ),
            SizedBox(height: 16.0),
            // Password TextField
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                errorText: _isValid ? null : "Password cannot be empty",
              ),
            ),
            SizedBox(height: 24.0),
            // Login Button
            ElevatedButton(
              onPressed: _login,
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Button color
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
