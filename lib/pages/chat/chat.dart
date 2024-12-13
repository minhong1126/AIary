import 'package:flutter/material.dart';
import 'package:aiary/theme/color.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: color.mainGreen,
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

class ChatField extends StatelessWidget {
  const ChatField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send, color: color.darkGreen),
          onPressed: () {
            print('pressed');
          },
        ),
      ),
    );
  }
}
