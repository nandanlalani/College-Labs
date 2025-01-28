import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Form Validation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormValidationPage(),
    );
  }
}

class FormValidationPage extends StatefulWidget {
  @override
  _FormValidationPageState createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {
  final _formKey = GlobalKey<FormState>();

  // Form input values
  String? _name;
  String? _email;
  String? _selectedGender;
  bool _acceptTerms = false;

  // Gender options
  final List<String> _genderOptions = ['Male', 'Female', 'Other'];

  // Validators
  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name cannot be empty';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    // Simple email regex validation
    String pattern = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\b';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? _validateGender(String? value) {
    if (value == null) {
      return 'Please select a gender';
    }
    return null;
  }

  String? _validateTerms(bool value) {
    if (!value) {
      return 'You must accept the terms and conditions';
    }
    return null;
  }

  // Form submission
  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      if (!_acceptTerms) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('You must accept the terms and conditions')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Form Submitted Successfully!')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fix the errors in the form')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form with Validation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Name field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) => _name = value,
                validator: _validateName,
              ),
              SizedBox(height: 16),

              // Email field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) => _email = value,
                keyboardType: TextInputType.emailAddress,
                validator: _validateEmail,
              ),
              SizedBox(height: 16),

              // Gender dropdown field
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Gender',
                  border: OutlineInputBorder(),
                ),
                value: _selectedGender,
                onChanged: (value) => setState(() {
                  _selectedGender = value;
                }),
                items: _genderOptions.map((gender) {
                  return DropdownMenuItem<String>(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
                validator: _validateGender,
              ),
              SizedBox(height: 16),

              // Terms checkbox field
              // Checkbox does not have a direct 'validator', so we handle it separately in _submitForm
              CheckboxListTile(
                title: Text('Accept Terms and Conditions'),
                value: _acceptTerms,
                onChanged: (value) => setState(() {
                  _acceptTerms = value ?? false;
                }),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(height: 16),

              // Submit button
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
