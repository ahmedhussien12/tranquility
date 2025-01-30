import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/logic/helper.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  final list = [
    QuotesModel(
        body: '"The only way to do great work is to love what you do."',
        author: "Steve Jobs"),
    QuotesModel(
        body:
            '"The greatest glory in living lies not in never falling, but in rising every time we fall."',
        author: "Nelson Mandela"),
    QuotesModel(
        body:
            '"The future belongs to those who believe in the beauty of their dreams."',
        author: "Eleanor Roosevelt")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AppImages(
            "quotes.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xffD9D9D9).withOpacity(.5),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: PageView.builder(
              itemBuilder: (context, index) => Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 34),
                  margin: EdgeInsets.symmetric(horizontal: 14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffff).withOpacity(.81),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      AppImages("ic_qoutes.svg"),
                      Text(
                        list[index].body,
                        style: TextStyle(fontSize: 34),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        list[index].author,
                        style: TextStyle(fontSize: 34),
                        textAlign: TextAlign.end,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          FlutterClipboard.copy(list[index].body).then(
                            (value) => print('copied'),
                          );
                          showMessage("Copied success",
                              messageType: MessageType.error);
                        },
                        label: Text("Copy"),
                        icon: AppImages("copy.svg"),
                      )
                    ],
                  ),
                ),
              ),
              itemCount: list.length,
            ),
          )
        ],
      ),
    );
  }
}

class QuotesModel {
  late String body, author;

  QuotesModel({required this.body, required this.author});
}
