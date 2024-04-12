import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenShotPage extends StatelessWidget {
  ScreenShotPage({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/Screenshots/1.png",
      "assets/Screenshots/2.png",
      "assets/Screenshots/3.png",
      "assets/Screenshots/4.png",
      "assets/Screenshots/5.png",
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ZAPP SCREENSHOTS",
              style: TextStyle(
                fontSize: GetPlatform.isMobile ? MediaQuery.of(context).size.width /20 : 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: images.map((e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(e, width: 300,),
            )).toList(),
          ),
        )
      ],
    );
  }
}
