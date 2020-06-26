import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_routes.dart';
import 'app/ui/android/home/home_page.dart';
import 'app/ui/theme/app_theme.dart';

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