import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xffC9DABF),
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              // Image.asset('assets/images/logo.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('logo',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                      )),
                ],
              )
            ],
          )),
    );
  }
}
