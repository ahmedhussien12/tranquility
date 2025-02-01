import 'package:flutter/material.dart';
import 'package:secondproject/core/logic/helper.dart';
import 'package:secondproject/other_screens/counter.dart';
import 'package:secondproject/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:secondproject/core/logic/cache_helper.dart';

import 'core/logic/app_theme.dart';

const primary = Color(0xff284243);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: "Tranquility",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: Splash(),
    );
  }
}
