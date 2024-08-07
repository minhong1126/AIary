import 'package:flutter/material.dart';
import 'package:aiary/home.dart';
import 'package:aiary/chat.dart';

const lightGreen = Color(0xffC9DABF);
const mainGreen = Color(0xff9CA986);
const darkGreen = Color(0xff808D7C);
const darkestGreen = Color(0xff5F6F65);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => home(),
      '/chat': (context) => chat(),
    });
  }
}
