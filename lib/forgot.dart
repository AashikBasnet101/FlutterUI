import 'package:flutter/material.dart';
import 'package:flutter_app/instagram.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/signup2.dart';

class Forgot extends StatelessWidget {
  Forgot({super.key});
  String? firstName, lastName, registrationNumber, password;
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
      body: SingleChildScrollView(
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
                      "Forgot Password",
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
                  children: [Text("Please enter your Email")],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: SizedBox(
                  height: 45,
                  child: TextFormField(
                    onChanged: (value) {
                      firstName = value;
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
                padding: const EdgeInsets.only(top: 380.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup2()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      backgroundColor: const Color(0xFF2163b1),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Send Link"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
