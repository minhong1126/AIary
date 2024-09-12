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
      body: Column(
        children: [
          Expanded(child: Container()),
          const ChatField(),
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

class ChatField extends StatelessWidget {
  const ChatField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color.white,
      padding: const EdgeInsets.all(0.8),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send, color: color.darkGreen),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Message sent!')),
              );
            },
          ),
        ],
      ),
    );
  }
}
