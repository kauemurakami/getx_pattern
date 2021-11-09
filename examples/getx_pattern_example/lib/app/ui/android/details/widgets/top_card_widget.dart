import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/details/details_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_text_theme.dart';

class CardTopCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(16),
        child: GetX<DetailsController>(
          builder: (_)=> Text(_.post.title, style: cardTextStyle,),
        ),
      ),
    );
  }
}
