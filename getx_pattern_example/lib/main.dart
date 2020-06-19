import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/routes/my_routes.dart';
import 'package:getx_pattern/src/ui/android/login/login_page.dart';
import 'package:getx_pattern/src/ui/theme/my_theme.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    getPages: MyRoutes.routes,
    home: LoginPage(),
    theme: appThemeData,
  ));
}
