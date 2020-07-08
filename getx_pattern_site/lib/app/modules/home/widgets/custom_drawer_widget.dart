import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/widgets/custom_item_drawer_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomDrawer extends Drawer {
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
                  child: Text('GetX Pattern'),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/rocket_minimal.png'))
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
