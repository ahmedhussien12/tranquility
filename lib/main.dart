import 'package:flutter/material.dart';
import 'package:secondproject/core/logic/helper.dart';
import 'package:secondproject/other_screens/counter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/logic/app_theme.dart';

const primary = Color(0xff284243);
late SharedPreferences prefs;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: Counter(),
    );
  }
}
