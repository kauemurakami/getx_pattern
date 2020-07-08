import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/home_controller.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';

class CustomSwitchWidget extends StatelessWidget {

  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Switch(
      hoverColor: Colors.red,
      activeColor: Colors.black,
      inactiveThumbColor: spotlightColor,
      activeTrackColor: spotlightColor,
      inactiveTrackColor: softBlue,
      value: controller.themeIsDark, 
      onChanged: controller.changeTheme));
  }
}
