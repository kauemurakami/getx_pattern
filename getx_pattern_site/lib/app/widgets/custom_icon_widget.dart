import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomIconWidget extends ContainerResponsive {
  final String url;

  CustomIconWidget({this.url});

  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      margin: EdgeInsets.only(left: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            
            //abrir navegadores links
            onTap: () => print('clico'),
            child: ContainerResponsive(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(this.url)))),
          )
        ],
      ),
    );
  }
}
