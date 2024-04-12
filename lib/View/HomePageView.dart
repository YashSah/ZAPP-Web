import 'package:flutter/material.dart';
import 'package:zapp_web/Config/ResponsiveLayout.dart';
import 'package:zapp_web/Pages/MobileHomePage.dart';
import 'package:zapp_web/Pages/WebHomePage.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});


  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileHomePage(),
      Web: WebHomePage(),
    );
  }
}
