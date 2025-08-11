import 'package:flutter/material.dart';
import 'package:flutter_app/assignment.dart';
import 'package:flutter_app/assignmentupload.dart';
import 'package:flutter_app/bottom_nav.dart';
import 'package:flutter_app/dashboard.dart';
import 'package:flutter_app/facebook.dart';
import 'package:flutter_app/futsal_booking.dart';
import 'package:flutter_app/futsal_next.dart';
import 'package:flutter_app/instagram.dart';
import 'package:flutter_app/login_form.dart';
import 'package:flutter_app/notifications.dart';
import 'package:flutter_app/profile.dart';
import 'package:flutter_app/splash_screen.dart';
import 'package:flutter_app/stack_test.dart';
import 'package:flutter_app/stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
