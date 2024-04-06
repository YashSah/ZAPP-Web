import 'package:flutter/material.dart';
import 'package:zapp_web/Config/Theme.dart';
import 'package:zapp_web/Pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZAPP Website',
      theme: lightTheme,
      home: HomePage(),
    );
  }
}
