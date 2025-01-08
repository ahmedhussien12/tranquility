import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<dynamic> navigateTo(Widget page,
    {bool keepHistory = true, isReplacement = false}) {
  if (isReplacement) {
    return Navigator.pushReplacement(
      navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => page),
    );
  }
  return Navigator.pushAndRemoveUntil(navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => page), (route) => keepHistory);
}

enum MessageType {success, warning, error}
void showMessage(String msg, {MessageType messageType = MessageType.success}) {
  ScaffoldMessenger.of(
    navigatorKey.currentContext!,
  ).showSnackBar(SnackBar(
    content: Text(msg),
    backgroundColor: messageType == MessageType.success
        ? Theme.of(navigatorKey.currentContext!).primaryColor
        : messageType == MessageType.warning
            ? Colors.orange
            : Colors.red,
    duration: Duration(seconds: 1),
  ));
}
