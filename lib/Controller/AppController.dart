import 'package:get/get.dart';
import 'dart:html' as html;
class AppController extends GetxController {

  String appUrl = "https://github.com/YashSah/ZAPP-website/releases/download/1.0.1/ZAPP.1.0.1.apk";
  String apkName = "ZAPP.apk";

  Future downloadApk() async {
    try {
      final anchor = html.AnchorElement(href: appUrl)..download = apkName;
      
      html.document.body!.children.add(anchor);
      anchor.click();
      html.document.body!.children.remove(anchor);
    } catch (e) {
      print(e);
    }
  }
}

//download/1.0.0/ZAPP.apk