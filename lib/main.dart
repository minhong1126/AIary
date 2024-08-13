import 'dart:async';

import 'package:flutter/material.dart';
import 'package:aiary/pages/home.dart';
import 'package:aiary/pages/chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', title: 'AIary', routes: {
      '/': (context) => const LogoScreen(),
      '/home': (context) => const Home(),
      '/chat': (context) => const Chat(),
    });
  }
}

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  LogoScreenState createState() => LogoScreenState();
}

class LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home())),
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
