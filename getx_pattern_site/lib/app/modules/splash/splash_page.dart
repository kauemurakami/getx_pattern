import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/routes/app_pages.dart';
import 'package:getx_pattern_site/app/theme/app_text_theme.dart';

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
    Future.delayed(Duration(seconds: 2), () => Get.toNamed(Routes.HOME));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 200, bottom: 10),
          child: Container(
            height: 200,
            width: 200,
            /*decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/img_splash.png"),
                    fit: BoxFit.fill)),*/
          ),
        ),
        Text(
          "GETX_PATTERN",
          style: TextStyle(
              color: spotlightColor,
              fontSize: 20,
              decoration: TextDecoration.none),
        ),
      ]),
    );
  }
}