import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/logic/helper.dart';
import 'package:secondproject/screens/assistant.dart';
import 'package:secondproject/screens/home/about_us.dart';
import 'package:secondproject/screens/home/views/Quotes.dart';
import 'package:secondproject/screens/home/views/chats.dart';
import 'package:secondproject/screens/home/views/profile.dart';
import 'package:secondproject/screens/login.dart';

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

  List drawerIcons = ["about_us.svg", "rate.svg", "suggestions.svg"];
  List drawerTitles = ["About Us", "Rate Our App", "Suggestions"];
  int drawerCurrentIndex = 0;
  bool isEasyLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25),
                ),
              ),
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 31),
              child: SafeArea(
                child: Column(
                  children: [
                    ClipOval(
                      child: AppImages(
                        profileImage,
                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Ahmed",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "01003540025",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                navigateTo(AboutUs());
              },
              child: Container(
                height: 56,
                width: 312,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    AppImages(
                      "about_us.svg",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 2.5),
                    Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () async {
                await openUrl(
                    "https://play.google.com/store/apps/details?id=com.tencent.ig&hl=en&pli=1");
              },
              child: Container(
                height: 56,
                width: 312,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    AppImages(
                      "rate.svg",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 2.5),
                    Text(
                      "Rate Us",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 56,
                width: 312,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    AppImages(
                      "suggestions.svg",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 2.5),
                    Text(
                      "Suggestions",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 56,
              width: 312,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  AppImages(
                    "easy_login.svg",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 2.5),
                  Text(
                    "Enable Easy Login",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Switch(
                      value: isEasyLogin,
                      onChanged: (value) {
                        isEasyLogin = value;
                        setState(() {});
                      })
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                navigateTo(Login());
              },
              child: Container(
                height: 56,
                width: 312,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  color: Color(0xffFF3A3A).withOpacity(.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    AppImages(
                      "logout.svg",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 2.5),
                    Text(
                      "Logout",
                      style: TextStyle(fontSize: 16, color: Color(0xffFF3A3A)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: currentIndex == 1,
      appBar: AppBar(
        title: Text(currentIndex == 2 ? "Edit Profile" : titles[currentIndex]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateTo(Assistant(), keepHistory: true);
        },
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
