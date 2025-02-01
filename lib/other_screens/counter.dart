import 'package:flutter/material.dart';
import 'package:secondproject/main.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = prefs.getInt("count") ?? 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            IconButton(
                onPressed: () async {
                  count++;
                  await prefs.setInt("count", count);
                  setState(() {});
                },
                icon: Icon(Icons.add)),
            Text("$count"),
            IconButton(
                onPressed: () async {
                  count--;
                  await prefs.setInt("count", count);
                  setState(() {});
                },
                icon: Icon(Icons.remove)),
          ],
        ),
      ),
    );
  }
}
