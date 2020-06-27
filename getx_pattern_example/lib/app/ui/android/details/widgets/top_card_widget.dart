import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/details/details_controller.dart';

class CardTopCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: GetX<DetailsController>(
          builder: (_)=> Text(_.post.title),
        ),
      ),
    );
  }
}
