import 'package:flutter/material.dart';
import 'package:secondproject/screens/login.dart';
import 'package:secondproject/screens/splash.dart';

const primary = Color(0xff284243);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(primary.value, {
            50: primary.withOpacity(.1),
            100: primary.withOpacity(.2),
            200: primary.withOpacity(.3),
            300: primary.withOpacity(.4),
            400: primary.withOpacity(.5),
            500: primary.withOpacity(.6),
            600: primary.withOpacity(.7),
            700: primary.withOpacity(.8),
            800: primary.withOpacity(.9),
            900: primary
          }),
        ),
      ),
      home: Login(),
    );
  }
}
