import 'package:flutter/material.dart';
import 'package:flutter_app/instagram.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/signup.dart';

class Signup2 extends StatefulWidget {
  Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  String? email;

  bool passwordVisibility = false;
  bool confirmPasswordVisibility = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signup()),
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
                        if (value == null || value.isEmpty) {
                          return "please enter your email address";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        email = value; // No null assertion needed
                      },
                      decoration: const InputDecoration(
                        labelText: "Email Address",
                        suffixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 45,
                    child: TextFormField(
                      obscureText: passwordVisibility == true ? false : true,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passwordVisibility) {
                                passwordVisibility = false;
                              } else {
                                passwordVisibility = true;
                              }
                            });
                          },
                          icon: Icon(
                            passwordVisibility
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 45,
                    child: TextFormField(
                      obscureText: confirmPasswordVisibility == true
                          ? false
                          : true,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (confirmPasswordVisibility) {
                                confirmPasswordVisibility = false;
                              } else {
                                confirmPasswordVisibility = true;
                              }
                            });
                          },
                          icon: Icon(
                            confirmPasswordVisibility
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        labelText: "Confirm Password",
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
                      Icon(Icons.circle, size: 10, color: Colors.grey),
                      SizedBox(width: 6),
                      Icon(
                        Icons.circle,
                        size: 10,
                        color: Colors.blue,
                      ), // Active
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
                            MaterialPageRoute(builder: (context) => Login()),
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
