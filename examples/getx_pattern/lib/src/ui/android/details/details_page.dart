import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/details/details_controller.dart';
import 'package:getx_pattern/src/ui/android/details/widgets/card_details_widget.dart';
import 'package:getx_pattern/src/ui/android/widgets/button_widget.dart';

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
            CardDetailsWidget(),
            CustomButton(function: _.apagar(), text: 'Apagar', color: Colors.red, )
          ],);
        }),
      ),
    );
  }
}