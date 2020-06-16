import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/details/details_controller.dart';

class TopCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetX<DetailsController>(
        assignId: true,
        builder:(_){
          return Text(_.item.title);
        }
    ));
  }
}