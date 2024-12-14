import 'package:flutter/material.dart';
import 'package:aiary/theme/color.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: mainGreen,
      appBar: _Appbar(),
      body: Expanded(child: Container()),
      bottomNavigationBar: const ChatField(),
    );
  }
}

class _Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: darkGreen,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: ImageFiltered(
        imageFilter: const ColorFilter.mode(lightGreen, BlendMode.srcIn),
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          height: 50,
          width: 50,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class ChatField extends StatelessWidget {
  const ChatField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send, color: darkGreen),
          onPressed: () {
            print('pressed');
          },
        ),
      ),
    );
  }
}
