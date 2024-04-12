import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget Web;
  const ResponsiveLayout({super.key, required this.mobile, required this.Web});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 600) {
          return mobile;
        } else {
          return Web;
        }
      },
    );
  }
}
