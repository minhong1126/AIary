import 'package:flutter/material.dart';
import 'package:aiary/theme/color.dart';
import 'package:flutter/widgets.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color.mainGreen,
        body: Column(
          children: [
            appbar(),
            // 채팅 화면,
            // 채팅 입력창
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
