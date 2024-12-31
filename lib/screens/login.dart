import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 52, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "asset/images/login.png",
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
                      fontSize: 48, color: Theme.of(context).primaryColor,fontFamily: "Courgette"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
