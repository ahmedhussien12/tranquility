import 'package:flutter/material.dart';

class Quotes extends StatelessWidget {
  const Quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes"),
      ),
      body: Center(
        child: Text("Quotes"),
      ),
    );
  }
}
