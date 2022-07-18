import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/details/details_controller.dart';
import 'package:getx_pattern/app/controller/home/home_controller.dart';
import 'package:getx_pattern/app/ui/android/details/widgets/bottom_card_widget.dart';
import 'package:getx_pattern/app/ui/android/details/widgets/top_card_widget.dart';
import 'package:slimy_card/slimy_card.dart';

class DetailsPage extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: 400,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(32),
            child: GetX<DetailsController>(
              builder: (_) {
                _.post = Get.find<HomeController>().post;
                return ListView(
                  children: <Widget>[
                    SlimyCard(
                      color: Colors.red,
                      width: 400,
                      topCardHeight: 150,
                      bottomCardHeight: 300,
                      borderRadius: 15,
                      topCardWidget: CardTopCustomWidget(),
                      bottomCardWidget: CardBottomCustomWidget(),
                      slimeEnabled: true,
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
