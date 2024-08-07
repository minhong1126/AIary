import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // backgroundColor: lightGreen,
          body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          // Image.asset('assets/images/logo.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('logo', style: TextStyle()),
            ],
          )
        ],
      )),
    );
  }
}
