import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_button.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/designs/app_input.dart';
import 'package:secondproject/core/logic/helper.dart';
import 'package:secondproject/screens/forget_password.dart';
import 'package:secondproject/screens/view.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 52, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImages(
                  "login.png",
                  height: 220,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Welcome to",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "Tranquility",
                  style: TextStyle(
                      fontSize: 48,
                      color: Theme.of(context).primaryColor,
                      fontFamily: "Courgette"),
                ),
                SizedBox(
                  height: 10,
                ),
                AppInput(
                  label: "Phone Number",
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 16,
                ),
                AppInput(
                  label: "Password",
                  keyboardType: TextInputType.text,
                  isPassword: true,
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {
                      navigateTo(ForgetPassword(), keepHistory: true);
                    },
                    child: Text("Forget Password?"),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                AppButton(
                  onPressed: () {
                    navigateTo(Views(),keepHistory: false);
                  },
                  text: "Login",
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have an Account?"),
                    TextButton(onPressed: () {}, child: Text("SignUp"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
