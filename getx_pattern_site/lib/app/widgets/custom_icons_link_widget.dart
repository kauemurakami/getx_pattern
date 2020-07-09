import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomIconsLinks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
          flex: 1,
            child: ContainerResponsive(
              width: 300,
                color: Get.isDarkMode ? spotlightColor  : softBlue ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextResponsive('GETX'),
                    TextResponsive('GITHUB'),
                    TextResponsive('TELEGRAM'),
                    TextResponsive('SNIPPETS'),
                  ],
                )));
  }
}