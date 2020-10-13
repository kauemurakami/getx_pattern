import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:getx_pattern_site/app/widgets/custom_icon_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomIconsLinks extends StatelessWidget {
  final List<String> imagesUrl = [
    'assets/images/dart.png',
    'assets/images/github.png',
    'assets/images/telegram.png',
    'assets/images/microsoft.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: ContainerResponsive(
            width: 300,
            color: Get.isDarkMode ? spotlightColor : softBlue,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded( flex: 2,
                    child: ListView.builder(
                      shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: this.imagesUrl.length,
                        itemBuilder: (c, i) {
                          return CustomIconWidget(url: this.imagesUrl[i]);
                        }),
                  )
                ])));
  }
}
