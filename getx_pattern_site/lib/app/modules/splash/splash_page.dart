import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/routes/app_pages.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class SplashPage extends StatefulWidget {
//repository injection
//final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(milliseconds: 3000), () => Get.toNamed(Routes.HOME));
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: Get.height, // Optional
      width: Get.width, // Optional
      allowFontScaling: true, // Optional
    );

    return ResponsiveWidgets.builder(
      height: Get.height, // Optional
      width: Get.width, // Optional
      allowFontScaling: true, // Optional
      child: Scaffold(
          body: Center(
              child: Text(
        'GetX Pattern',
        style: TextStyle(color: softBlue),
      ))),
    );
  }
}
