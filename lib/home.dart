import 'package:flutter/material.dart';

const lightGreen = Color(0xffC9DABF);
const mainGreen = Color(0xff9CA986);
const darkGreen = Color(0xff808D7C);
const darkestGreen = Color(0xff5F6F65);

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: lightGreen,
          body: Column(
            children: [
              AppBar(
                backgroundColor: lightGreen,
                centerTitle: true,
                title: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.contain,
                  height: 30,
                  width: 30,
                ),
              )
            ],
          )),
    );
  }
}
