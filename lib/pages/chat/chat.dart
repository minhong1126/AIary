import 'package:flutter/material.dart';
import 'package:aiary/theme/color.dart';
import './chatlist.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: color.mainGreen,
        body: Column(
          children: [
            appbar(),
            // Expanded(
            // child: ),
            //  _BottomInputField(),
          ],
        ),
      ),
    );
  }
}

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color.darkGreen,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: color.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
