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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(child: Container()), // Chat content goes here
            const ChatField(), // Chat input field at the bottom
          ],
        ),
      ),
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class ChatField extends StatelessWidget {
  const ChatField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send, color: darkGreen),
          onPressed: () {
            print('Message sent');
            _controller
                .clear(); // Clear the input field after sending the message
          },
        ),
      ),
    );
  }
}
