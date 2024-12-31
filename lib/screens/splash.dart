import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

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
