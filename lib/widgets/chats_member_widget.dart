import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsMemeberWidget extends StatefulWidget {
  const ChatsMemeberWidget({super.key});

  @override
  State<ChatsMemeberWidget> createState() => _ChatsMemeberWidgetState();
}

class _ChatsMemeberWidgetState extends State<ChatsMemeberWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: const SingleChildScrollView(),
        ),
      ],
    );
  }
}
