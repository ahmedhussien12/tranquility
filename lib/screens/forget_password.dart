import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 52),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset("asset/images/forget_password.png"),
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
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: "Phone Number"),
                ),
                SizedBox(
                  height: 16,
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("Forget Paswword"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
