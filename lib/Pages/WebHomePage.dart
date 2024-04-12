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

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SvgPicture.asset(
            "assets/Icons/app_icon.svg",
            color: Theme.of(context).colorScheme.primary,
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
                backgroundColor: Theme.of(context).colorScheme.primary,
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
        child: LayoutBuilder(
          builder: (context, constraints) {
            final contentWidth = constraints.maxWidth;
            final featureWidth = 600;

            if (contentWidth > featureWidth) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    MainInfo(),
                    SizedBox(height: 60),
                    MyDivider(),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "FEATURES",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color:
                            Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WebFeatureTile(
                          icon: Icons.message_outlined,
                          title: "Seamless Messaging",
                          description:
                          contentWidth > 1350 ? "Instantly connect with friends and family through lightning-fast messaging, anytime, anywhere." : "",
                        ),
                        WebFeatureTile(
                          icon: Icons.groups,
                          title: "Group Creation",
                          description:
                          contentWidth > 1350 ? "Easily create and manage groups to stay organized and engaged with your communities." : "",
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WebFeatureTile(
                          icon: Icons.perm_media_outlined,
                          title: "Media Sharing",
                          description:
                          contentWidth > 1350 ? "Share photos and videos with ease, enriching conversations and memories." : "",
                        ),
                        WebFeatureTile(
                          icon: Icons.call,
                          title: "Video/Audio Calls",
                          description:
                          contentWidth > 1350 ? "Experience high-quality audio and video calls for face-to-face conversations." : "",
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    MyDivider(),
                    SizedBox(height: 40),
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
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    MainInfo(),
                    SizedBox(height: 60),
                    MyDivider(),
                    SizedBox(height: 40),
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
              );
            }
          },
        ),
      ),
    );
  }
}
