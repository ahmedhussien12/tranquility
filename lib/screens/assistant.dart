import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_images.dart';

class Assistant extends StatelessWidget {
  const Assistant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsetsDirectional.only(
                  top: 106, bottom: 23, start: 20, end: 20),
              height: 420,
              color: Theme.of(context).primaryColor.withOpacity(.15),
              child: Column(
                children: [
                  AppImages(
                    "teenyicons_chatbot-outline.svg",
                    height: 157,
                    width: 157,
                    fit: BoxFit.fill,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Hey!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "I’am your Personal Assistant",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
