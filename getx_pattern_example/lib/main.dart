import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/routes/my_routes.dart';
import 'package:getx_pattern/src/ui/android/home/home_page.dart';
import 'package:getx_pattern/src/ui/theme/my_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        theme: appThemeData,
        defaultTransition: Transition.fade,
        getPages: MyRoutes.routes,
        home: HomePage(),
    )
  );
}