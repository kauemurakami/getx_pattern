import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/home_controller.dart';

class CustomSwitchWidget extends GetView {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Switch(
        value: controller.themeIsDark, onChanged: controller.changeTheme));
  }
}
