import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_button.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/designs/app_otp.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 52),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImages(
                  "otp.png",
                  height: 220,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Verification",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Please enter the code sent on your phone",
                  style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor.withOpacity(.67)),
                ),
                SizedBox(height: 33),
                AppOtp(),
                SizedBox(
                  height: 16,
                ),
                AppButton(
                  onPressed: () {},
                  text: "Verify",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
