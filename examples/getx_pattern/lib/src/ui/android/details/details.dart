import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/details/details_controller.dart';

class DetailsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('DetailsPage')),

    body: Container(
      child: GetX<DetailsController>(
        init: DetailsController(),
        builder: (_){
          _.item = Get.arguments;
          return Column(children: <Widget>[
            Text(_.item.title),
            Text(_.item.body),
          ],);
        }),
      ),
    );
  }
}