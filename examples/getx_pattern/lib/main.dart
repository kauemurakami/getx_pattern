import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/routes/my_routes.dart';
import 'package:getx_pattern/src/ui/theme/my_theme.dart';
import 'src/ui/android/home/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    namedRoutes: MyRoutes.routes,
    home: MyHomePage(),
    theme: appThemeData,
  ));
}
