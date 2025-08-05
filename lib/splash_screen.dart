import 'package:flutter/material.dart';
import 'package:flutter_app/calander.dart';
import 'package:flutter_app/forgot.dart';
import 'package:flutter_app/futsal_next.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (content) => Calander()),
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Image.asset("assets/images/splash.png"),
            ),
          ),
        ],
      ),
    );
  }
}
