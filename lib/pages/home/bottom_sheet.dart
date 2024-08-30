import 'package:flutter/material.dart';
import 'package:aiary/theme/color.dart';
import 'package:aiary/pages/chat/chat.dart';

class ScrollBottomWidget extends StatefulWidget {
  const ScrollBottomWidget({super.key});

  @override
  State<StatefulWidget> createState() => ScrollBottomWidgetState();
}

class ScrollBottomWidgetState extends State<ScrollBottomWidget> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.9,
        minChildSize: 0.1,
        maxChildSize: 1.0,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
              decoration: const BoxDecoration(
                color: color.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Chat()));
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: color.white,
                        backgroundColor: color.lightGreen,
                      ),
                      child: const Text('채팅 시작하기')),
                ],
              ));
        });
  }
}
