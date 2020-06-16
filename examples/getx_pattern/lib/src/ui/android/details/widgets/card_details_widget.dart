import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/details/details_controller.dart';
import 'package:getx_pattern/src/ui/android/details/widgets/bottom_card_widget.dart';
import 'package:getx_pattern/src/ui/android/details/widgets/top_card_widget.dart';
import 'package:slimy_card/slimy_card.dart';

class CardDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: GetX<DetailsController>(
        builder:(_){          
          return SlimyCard(
          topCardHeight: 200,
          topCardWidget: TopCardWidget(),
          bottomCardHeight: 300,
          bottomCardWidget: BottomCardWidget(),
        );
        }
      ),
    );
  }
}