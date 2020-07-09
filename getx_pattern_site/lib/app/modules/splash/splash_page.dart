import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/routes/app_pages.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import '../../routes/app_pages.dart';

class SplashPage extends StatefulWidget {
//repository injection
//final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {

  static const double _iconSize = 50;

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this, 
      duration: Duration(milliseconds: 2300),
    );
    _animation = CurvedAnimation(
      parent: _animationController.view,
      curve: Curves.easeInCubic
    );

    _animationController.forward()
      .whenComplete(() => Get.offNamed(Routes.HOME));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: Get.height, // Optional
      width: Get.width, // Optional
      allowFontScaling: true, // Optional
    );
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animation,
        builder: (BuildContext context, Widget child) {
          return FractionalTranslation(
            translation: Offset(
              ((Get.width / _iconSize - 1) * _animationController.value),
              (Get.height / _iconSize - 1) - ((Get.height / _iconSize - 1) * _animationController.value)
            ),
            child: child,
          );
        },
        child: Image.asset(
          'assets/images/rocket_minimal_new.png',
          width: _iconSize,
          height: _iconSize,
        ),
      )
    );
  }
}
