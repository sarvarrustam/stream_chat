import 'package:chat_project/widgets/chats_member_widget.dart';
import 'package:flutter/material.dart';

class ChatsHomeWidget extends StatefulWidget {
  const ChatsHomeWidget({super.key});

  @override
  State<ChatsHomeWidget> createState() => _ChatsHomeWidgetState();
}

class _ChatsHomeWidgetState extends State<ChatsHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatsMemeberWidget(),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: const [
      // Center(
      //   child: Column(
      //     children: const [
      //       Icon(
      //         CupertinoIcons.chat_bubble,
      //         size: 113,
      //         color: Colors.grey,
      //       ),
      //       Text(
      //         "Lets start chating!",
      //         style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      //       ),
      //     ],
      //   ),
      // ),
      // TextButton(
      //   onPressed: () => const ChatsMemeberWidget(),
      //   child: const Text(
      //     "Start a chat",
      //     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      //   ),
      // ),
      //   ],
      // ),
    );
  }
}
