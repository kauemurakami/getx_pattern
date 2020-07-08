import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/routes/app_pages.dart';
import 'package:getx_pattern_site/app/theme/app_theme.dart';

import 'app/modules/splash/splash_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    home: SplashPage(),
    getPages: AppPages.pages,
    theme: appThemeData,
    defaultTransition: Transition.rightToLeftWithFade,
  ));
}

