import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/widgets/custom_theme_button_widget.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomDrawerHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
        width: 200,
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ContainerResponsive(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/rocket_minimal.png'))),
              ),
              TextResponsive(
                'GetX Pattern',
                style: TextStyle(fontSize: 24, color: spotlightColor),
              ),
              ContainerResponsive(child: CustomSwitchWidget()),
            ]),
            TextResponsive(
              'Faça seus projetos com GetX decolarem !!!',
              style: TextStyle(fontSize: 16, color: softBlue),
            ),
          ],
        ),
      ),
    );
  }
}
