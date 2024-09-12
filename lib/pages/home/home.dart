import 'package:flutter/material.dart';
import 'package:aiary/theme/color.dart';
import 'calendar.dart';
import 'bottom_sheet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.lightGreen,
      appBar: _Appbar(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const CalendarWidget(),
          ),
          const Expanded(
            child: ScrollBottomWidget(),
          ),
        ],
      ),
    );
  }
}

class _Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color.lightGreen,
      centerTitle: true,
      leading: Container(),
      title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
        height: 50,
        width: 50,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
