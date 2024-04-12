import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zapp_web/Controller/AppController.dart';
import 'package:zapp_web/Widgets/MainInfo.dart';
import 'package:zapp_web/Widgets/Screenshot.dart';
import 'package:zapp_web/Widgets/WebFeatureTile.dart';

import '../Widgets/Divider.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    AppController appController = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SvgPicture.asset(
            "assets/Icons/app_icon.svg",
            color: Theme
                .of(context)
                .colorScheme
                .primary,
          ),
        ),
        title: Text("ZAPP"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: ElevatedButton.icon(
              onPressed: () {
                appController.downloadApk();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme
                    .of(context)
                    .colorScheme
                    .primary,
                foregroundColor: Colors.white,
              ),
              icon: Icon(Icons.download),
              label: Text("Download ZAPP"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/Icons/app_icon.svg",
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "ZAPP",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Elevating your chat experience",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .onBackground,
                  ),
                ),
                Text(
                  "To the next level.",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .onBackground,
                  ),
                ),
                Text(
                  "App version 1.0.1",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 700,
                  child: Text(
                    "ZAPP revolutionizes communication with seamless messaging, group creation, and crystal-clear video/audio calls, making staying connected effortless.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color:
                      Theme
                          .of(context)
                          .colorScheme
                          .onBackground,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        appController.downloadApk();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25 , vertical: 20),
                        decoration: BoxDecoration(
                          color: Theme
                              .of(context)
                              .colorScheme
                              .primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.android,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Download ZAPP",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40,),
            Container(
              width: w / 1.2,
              height: w / 1.2,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
              ),
              child: Transform.scale(
                scale: 2.5,
                // Increase the scale factor as needed to enlarge the image
                child: Image.asset(
                  "assets/Screenshots/main.png",
                  fit: BoxFit
                      .contain, // You can use BoxFit.contain or BoxFit.fill based on your requirement
                ),
              ),
            ),
            SizedBox(height: 60),
            MyDivider(),
            SizedBox(height: 60,),
            ScreenShotPage(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Made with"),
                Text(
                  " 𓆩♡𓆪 ",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
                Text("By Yash Sah"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
