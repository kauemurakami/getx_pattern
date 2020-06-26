import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/my_routes.dart';
import 'app/ui/android/home/home_page.dart';
import 'app/ui/theme/my_theme.dart';

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