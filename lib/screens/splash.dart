import 'dart:async';

import 'package:flutter/material.dart';
import 'package:secondproject/core/logic/helper.dart';
import 'package:secondproject/screens/on_boarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      navigateTo(OnBoarding(), keepHistory: false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 180,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Tranquility",
                style: TextStyle(
                  fontSize: 48,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Together Towards Tranquility",
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).primaryColor.withOpacity(.57),
                ),
              )
            ],
          ),
          backgroundColor: Color(0xff284243).withOpacity(0.3),
        ),
      ),
    );
  }
}
