import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:secondproject/core/designs/app_button.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/designs/app_input.dart';

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
                  path: "otp.png",
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
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  keyboardType: TextInputType.phone,
                  backgroundColor: Colors.transparent,
                  cursorColor: Theme.of(context).primaryColor,
                  enableActiveFill: true,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 60,
                      fieldWidth: 70,
                      selectedColor: Theme.of(context).primaryColor,
                      inactiveColor:
                          Theme.of(context).primaryColor.withOpacity(.67),
                      activeColor: Theme.of(context).primaryColor),
                ),
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
