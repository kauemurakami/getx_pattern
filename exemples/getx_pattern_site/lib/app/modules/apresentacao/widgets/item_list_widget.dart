import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:getx_pattern_site/app/theme/app_text_theme.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class ItemListWidget extends ContainerResponsive {
  final String text;
  final Color color;

  ItemListWidget({this.color, @required this.text});

  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      margin: EdgeInsetsResponsive.only( top: 16),
      width: Get.width,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Icon(
                Icons.fiber_manual_record,
                color: this.color,
              )),
          Expanded(
            flex: 7,
            child: TextResponsive(
              this.text,
              style: textContent,
            ),
          )
        ],
      ),
    );
  }
}
