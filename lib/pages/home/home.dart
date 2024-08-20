import 'package:flutter/material.dart';
import 'package:aiary/theme/color.dart';
import 'calendar.dart';
import 'bottomSheet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color.lightGreen,
        body: Column(
          children: [
            appbar(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const CalendarWidget(),
            ),
            const Expanded(
              child: ScrollBottomWidget(),
            ),
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
      backgroundColor: color.lightGreen,
      centerTitle: true,
      title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
        height: 50,
        width: 50,
      ),
    );
  }
}
