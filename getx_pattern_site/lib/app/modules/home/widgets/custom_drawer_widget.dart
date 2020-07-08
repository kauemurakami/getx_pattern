import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/home_controller.dart';
import 'package:getx_pattern_site/app/modules/home/widgets/custom_item_drawer_widget.dart';
import 'package:getx_pattern_site/app/modules/home/widgets/custom_switch_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomDrawer extends GetView {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      key: Key('container-drawer'),
      height: Get.height,
      heightResponsive: false,
      widthResponsive: true,
      width: 300,
      child: Drawer(
        child: Container(
            child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                width: 200,
                height: 50,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      TextResponsive(
                        'GetX Pattern',
                        style: TextStyle(fontSize: 16),
                      ),
                      ContainerResponsive(
                          child:CustomSwitchWidget()),
                    ]),
                    ContainerResponsive(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/rocket_minimal.png'))),
                    )
                  ],
                ),
              ),
            ),
            CustomItemDrawer(
              text: 'Apresentação',
            )
          ],
        )),
      ),
    );
  }
}
