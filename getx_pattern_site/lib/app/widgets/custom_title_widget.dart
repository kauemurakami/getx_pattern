import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/theme/app_text_theme.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomTitleWidget extends Container {
  final String title;

  CustomTitleWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextResponsive(
            this.title.tr,
            style: titulo,
          )
        ],
      ),
    );
  }
}
