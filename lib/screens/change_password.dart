import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_button.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/designs/app_input.dart';
import 'package:secondproject/core/logic/helper.dart';
import 'package:secondproject/screens/verification.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
                  "forget_password.png",
                  height: 220,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Change Your Password",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                SizedBox(height: 33),
                AppInput(
                  label: "Old Password",
                  isPassword: true,
                ),
                SizedBox(
                  height: 16,
                ),
                AppInput(
                  label: "New Password",
                  isPassword: true,
                ),
                SizedBox(
                  height: 16,
                ),
                AppInput(
                  label: "Confirm Your New Password",
                  isPassword: true,
                ),
                SizedBox(
                  height: 16,
                ),
                AppButton(
                  onPressed: () {
                    navigateTo(Verification(), keepHistory: true);
                  },
                  text: "Change PassWord",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
