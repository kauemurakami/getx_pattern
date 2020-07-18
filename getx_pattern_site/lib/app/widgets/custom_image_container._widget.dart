import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomImageContainerWidget extends ContainerResponsive {
  final String urlImage;

  CustomImageContainerWidget({this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ContainerResponsive(
        height: 300,
        width: 350,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(this.urlImage),
        )),
      ),
    );
  }
}
