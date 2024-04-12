import 'package:flutter/material.dart';
import 'package:zapp_web/Config/Theme.dart';
import 'package:zapp_web/Pages/MobileHomePage.dart';
import 'package:zapp_web/View/HomePageView.dart';

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
      title: 'ZAPP Website',
      theme: darkTheme,
      themeMode: ThemeMode.dark,
      home: HomePageView(),
    );
  }
}
