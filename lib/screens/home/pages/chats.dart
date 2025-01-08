import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_images.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final list = [
    ChatModel(titles: "About Work", dates: "10/12/2021"),
    ChatModel(titles: "About My Family", dates: "11/12/2021"),
    ChatModel(titles: "My self", dates: "12/12/2021"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Chats",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: list.isEmpty
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppImages(
                    "chats.svg",
                    height: 200,
                    width: 200,
                    fit: BoxFit.fill,
                    color: Theme.of(context).primaryColor,
                  ),
                  Text(
                    "You don’t have any Chats yet.",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            )
          : ListView.separated(
              padding: EdgeInsets.all(16),
              itemBuilder: (context, index) => Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                          color:
                              Theme.of(context).primaryColor.withOpacity(.1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            list[index].titles,
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            list[index].dates,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: AppImages(
                      "delete.svg",
                    ),
                    onPressed: () {
                      list.removeAt(index);
                      setState(() {});
                    },
                  )
                ],
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 16,
              ),
              itemCount: list.length,
            ),
    );
  }
}

class ChatModel {
  late String titles, dates;

  ChatModel({required this.titles, required this.dates});
}
