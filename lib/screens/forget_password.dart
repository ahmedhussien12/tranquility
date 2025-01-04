import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_button.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/designs/app_input.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 52),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImages(
                  path: "forget_password.png",
                  height: 220,
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Forget Password",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                AppInput(
                  label: "Phone Number",
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 16,
                ),
                AppButton(onPressed: (){},text: "Forget Password",)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
