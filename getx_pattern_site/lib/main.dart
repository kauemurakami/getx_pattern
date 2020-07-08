import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/home_page.dart';
import 'package:getx_pattern_site/app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: Routes.INITIAL,
    home: HomePage(),
    getPages: AppPages.pages,
    defaultTransition: Transition.rightToLeftWithFade,
  ));
}

