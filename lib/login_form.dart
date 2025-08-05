import 'package:flutter/material.dart';
import 'package:flutter_app/custom_elevated_button.dart';
import 'package:flutter_app/custom_textform.dart';
import 'package:flutter_app/drop_down.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: DropDown(
                  labelText: "Select Country",
                  items: ["Nepal", "India", "China", "USA"],
                  value: _selectedItem,
                  validator: (value) =>
                      value == null ? "Please select a country" : null,
                  onChanged: (value) {
                    print("User  choosed: $value");
                    setState(() {
                      _selectedItem = value;
                    });
                  },
                ),
              ),

              CustomTextform(
                labelText: "Email",
                keyboardType: TextInputType.emailAddress,
                onChanged: (email) {
                  print("User  typed: $email");
                },
                validator: (email) {
                  if (email == null || email.isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
              ),
              CustomTextform(
                labelText: "Phone",
                keyboardType: TextInputType.phone,
                onChanged: (phone) {
                  print("User  typed: $phone");
                },
                validator: (phone) {
                  if (phone == null || phone.isEmpty) {
                    return "Phone number is required";
                  }
                  return null;
                },
              ),
              CustomTextform(
                labelText: "DOB",
                keyboardType: TextInputType.datetime,
                onChanged: (datetime) {
                  print("User  typed: $datetime");
                },
                validator: (datetime) {
                  if (datetime == null || datetime.isEmpty) {
                    return "Date of birth is required";
                  }
                  return null;
                },
              ),
              CustomElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Process the data
                    print("Form is valid");
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
