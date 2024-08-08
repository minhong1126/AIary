import 'dart:async';

import 'package:flutter/material.dart';
import 'package:aiary/home.dart';
import 'package:aiary/chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', title: 'AIary', routes: {
      '/': (context) => logoScreen(),
      '/home': (context) => home(),
      '/chat': (context) => chat(),
    });
  }
}

class logoScreen extends StatefulWidget {
  @override
  logoScreenState createState() => logoScreenState();
}

class logoScreenState extends State<logoScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => home())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
