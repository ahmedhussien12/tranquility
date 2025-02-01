import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_button.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/designs/app_input.dart';
import 'package:secondproject/core/logic/helper.dart';

class Suggestions extends StatefulWidget {
  const Suggestions({super.key});

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  final subjectController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              openUrl(
                  "mailto:ahmed.hussien.950.ah@gmail.com?subject=${subjectController.text}&body=${bodyController.text}");
            },
            child: AppImages(
              "gmail.png",
              height: 60,
              width: 60,
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              openUrl("sms:01003540025");
            },
            child: AppImages(
              "whats_app.png",
              height: 60,
              width: 60,
            ),
          )
        ],
      ),
      appBar: AppBar(
        title: Text("Suggestions"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppImages(
              "suggestion.png",
              height: 177,
              width: 177,
            ),
            SizedBox(height: 16),
            Text(
              "Tell Us How We Can Help",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 53),
            AppInput(
              label: "Subject",
              controller: subjectController,
            ),
            SizedBox(height: 15),
            AppInput(
              label: "body",
              maxLines: 3,
              controller: bodyController,
            ),
            SizedBox(height: 24),
            AppButton(
              onPressed: () {},
              text: "Send Message",
            ),
            SizedBox(height: 45),
            Text(
              "Our Social Media Pages",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    openUrl(
                        "https://www.facebook.com/login/?next=https%3A%2F%2Fwww.facebook.com%2FAMIT.Learning%2F");
                  },
                  child: AppImages(
                    "facebook.png",
                    height: 32,
                    width: 32,
                  ),
                ),
                SizedBox(width: 32),
                AppImages(
                  "instagram.png",
                  height: 32,
                  width: 32,
                ),
                SizedBox(width: 32),
                AppImages(
                  "linkedin.png",
                  height: 32,
                  width: 32,
                ),
              ],
            ),
            SizedBox(height: 38),
            Text(
              "or visit our website",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),
            AppImages(
              "website.png",
              height: 32,
              width: 32,
            )
          ],
        ),
      ),
    );
  }
}
