import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/screens/home/pages/Quotes.dart';
import 'package:secondproject/screens/home/pages/chats.dart';
import 'package:secondproject/screens/home/pages/profile.dart';

class Views extends StatefulWidget {
  const Views({super.key});

  @override
  State<Views> createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  List icons = ["chats.svg", "quotes.svg", "profile.svg"];
  List titles = ["chats", "Quotes", "Profile"];
  int currentIndex = 0;
  List<Widget> pages = [
    Chats(),
    Quotes(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: AppImages(
          "teenyicons_chatbot-outline.svg",
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: List.generate(
          icons.length,
          (index) => BottomNavigationBarItem(
            icon: AppImages(
              icons[index],
              color: Colors.white.withOpacity(0.3),
            ),
            activeIcon: AppImages(
              icons[index],
            ),
            label: titles[index],
          ),
        ),
      ),
    );
  }
}
