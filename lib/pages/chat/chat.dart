import 'package:flutter/material.dart';
import 'package:aiary/theme/color.dart';
// import './chatlist.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: color.mainGreen,
      appBar: _Appbar(),
      body: Column(
        children: [
          // Expanded(
          // child: ),
          // _BottomInputField(),
        ],
      ),
    );
  }
}

class _Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color.darkGreen,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: color.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
