import 'package:chat_project/widgets/chats_home_widget.dart';
import 'package:chat_project/widgets/drawer_widget.dart';
import 'package:chat_project/widgets/mentions_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int index = 0;
  final pages = [
    const ChatsHomeWidget(),
    const MentionsWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        elevation: 0.5,
        title: const Text(
          "Stream Chat",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SizedBox.fromSize(
              size: const Size.square(45),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {},
                child: const Icon(
                  CupertinoIcons.pencil,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            backgroundColor: Colors.white,
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          height: 65,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(
                CupertinoIcons.chat_bubble,
                size: 26,
                color: Colors.grey,
              ),
              selectedIcon: Icon(
                CupertinoIcons.chat_bubble_fill,
                size: 30,
                color: Colors.black,
              ),
              label: "Chats",
            ),
            NavigationDestination(
              icon: Icon(
                CupertinoIcons.at,
                size: 26,
                color: Colors.grey,
              ),
              selectedIcon: Icon(
                CupertinoIcons.at_circle_fill,
                size: 30,
                color: Colors.black,
              ),
              label: "Mentions",
            ),
          ],
        ),
      ),
    );
  }
}
