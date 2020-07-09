import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/routes/app_pages.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:getx_pattern_site/app/theme/app_text_theme.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class SplashPage extends StatefulWidget {
//repository injection
//final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Offset> _animation;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 4500));
    _animation = Tween<Offset>(begin: Offset.zero, end: Offset.fromDirection(1.1, 40))
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.slowMiddle));
    _animationController.forward().whenComplete(() => Get.toNamed(Routes.HOME));
    super.initState();
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

    return ResponsiveWidgets.builder(
      height: Get.height, // Optional
      width: Get.width, // Optional
      allowFontScaling: true, // Optional
      child: Scaffold(
        body: SlideTransition(
          position: _animation,
          child: ContainerResponsive(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/rocket_minimal.png')),
              )),
        ),
      ),
    );
  }
}
