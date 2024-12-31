import 'package:flutter/material.dart';

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
                      fontSize: 48,
                      color: Theme.of(context).primaryColor,
                      fontFamily: "Courgette"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: "Phone Number"),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  obscureText: isHidden,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                          isHidden ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        isHidden = !isHidden;
                        setState(() {});
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Forget Password?"),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("Login"),
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
