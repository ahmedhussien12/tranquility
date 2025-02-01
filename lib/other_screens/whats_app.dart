import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_images.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  late TabController tapController;

  @override
  void initState() {
    super.initState();
    tapController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  final list = [
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
    ChatsModel(
        ProfileImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-17O1ilowE8NmMnG6dgiMEt4QbunQR6SJkw&s",
        title: "salma",
        subTitle: "hello salma",
        trailing: "10/12/2021"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
              color: Color(0xff9EA2A6),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_sharp),
            color: Color(0xff9EA2A6),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_sharp),
            color: Color(0xff9EA2A6),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            TabBar(
                controller: tapController,
                unselectedLabelColor: Color(0xff9EA2A6),
                labelColor: Color(0xff08B09E),
                dividerHeight: 0,
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                unselectedLabelStyle: TextStyle(fontSize: 20),
                indicatorColor: Color(0xff08B09E),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt_outlined,
                          color: Color(0xff9EA2A6))),
                  Text("Chats"),
                  Text("STATUS"),
                  Text("CALLS"),
                ]),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 16),
                itemBuilder: (context, index) => _ChatItem(
                  model: list[index],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 2,
                ),
                itemCount: list.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ChatItem extends StatelessWidget {
  const _ChatItem({super.key, required this.model});

  final ChatsModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: () {},
      splashColor: Color(0xff08B098).withOpacity(0.1),
      leading: ClipOval(
          child: AppImages(
        model.ProfileImage,
        fit: BoxFit.cover,
        width: 40,
        height: 40,
      )),
      title: Text(
        model.title * 10,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
      ),
      subtitle: Text(
        model.subTitle * 10,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Color(0xff9EA2A6)),
      ),
      trailing: Text(
        model.trailing,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: Color(0xff9EA2A6),
        ),
      ),
    );
  }
}

class ChatsModel {
  final String ProfileImage, title, subTitle, trailing;

  ChatsModel(
      {required this.ProfileImage,
      required this.title,
      required this.subTitle,
      required this.trailing});
}
