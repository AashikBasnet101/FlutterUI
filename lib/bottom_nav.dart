import 'package:flutter/material.dart';
import 'package:flutter_app/entry.dart';
import 'package:flutter_app/qr_generator.dart';
import 'package:flutter_app/stack_test.dart';
import 'package:flutter_app/toggle_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    StackTest(),
    Text("payment"),
    TogglePage(),
    Text("ecom Card"),
    Text('More Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment_rounded),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Send Money',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send_to_mobile_outlined),
            label: 'Ecom Card',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff006380),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
