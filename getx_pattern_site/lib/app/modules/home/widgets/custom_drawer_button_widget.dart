import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomDrawerButtonWidget extends GestureDetector {
  final VoidCallback callback;

  CustomDrawerButtonWidget({this.callback});

  @override
  Widget build(BuildContext context) {
    return 
      SafeArea(
        child: GestureDetector(
      onTap: this.callback,
      child: ContainerResponsive(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/rocket_minimal.png'))),
        ),
      ),
    );
  }
}
