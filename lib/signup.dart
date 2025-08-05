import 'package:flutter/material.dart';
import 'package:flutter_app/instagram.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/signup2.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  String? firstName, lastName, registrationNumber, password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Require information to account creations"),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: SizedBox(
                    height: 45,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter your First name";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        firstName = value;
                      },
                      decoration: const InputDecoration(
                        labelText: "First Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    height: 45,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("please enter your last name");
                        }
                        return null;
                      },

                      onChanged: (value) {
                        lastName = value;
                      },
                      decoration: const InputDecoration(
                        labelText: "Last Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    height: 45,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("please enter your registration number");
                        }
                        return null;
                      },
                      onChanged: (value) {
                        registrationNumber = value;
                      },
                      decoration: const InputDecoration(
                        labelText: "Registration Number",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 10,
                        color: Colors.blue,
                      ), // Active
                      SizedBox(width: 6),
                      Icon(
                        Icons.circle,
                        size: 10,
                        color: Colors.grey,
                      ), // Inactive
                      // Inactive
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup2()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        backgroundColor: const Color(0xFF2163b1),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Continue"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Row(
                          children: [
                            Expanded(child: Text("Already have an Account?")),
                            Row(
                              children: [
                                Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: const Color(0xFF2163b1),
                                  ),
                                ),

                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFF2163b1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
