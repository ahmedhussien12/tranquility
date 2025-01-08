import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/logic/helper.dart';
import 'package:secondproject/screens/login.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 1;
  List title = ["Feel Free", "Ask For Anything", "Your Secret Is Save"];
  List desc = [
    "because I'm the friendly chatbot here to assist you with anything you need.",
    "I'm your friendly neighborhood chatbot ready to assist you with any questions or concerns.",
    "Our platform prioritizes your privacy and security"
  ];
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .65,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                currentPage = value + 1;
                setState(() {});
              },
              itemBuilder: (context, index) => AppImages(
                "on_boarding${index + 1}.jpg",
                height: MediaQuery.of(context).size.height * .65,
                width: MediaQuery.of(context).size.width,
              ),
              itemCount: title.length,
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title[currentPage - 1],
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  desc[currentPage - 1],
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: 74,
                ),
                Row(
                  children: [
                    if (currentPage != 3)
                      TextButton(
                        onPressed: () {
                          navigateTo(Login(), keepHistory: false);
                        },
                        child: Text("Skip"),
                      ),
                    Spacer(),
                    FloatingActionButton(
                      onPressed: () {
                        if (currentPage < 3) {
                          pageController.nextPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.linear);
                        } else if (currentPage > 2) {
                          navigateTo(Login(), keepHistory: false);
                        }
                        setState(() {});
                      },
                      child: AppImages("forward.png"),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
