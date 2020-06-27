import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/details/details_controller.dart';
import 'package:getx_pattern/app/controller/home/home_controller.dart';
import 'package:getx_pattern/app/data/provider/api.dart';
import 'package:getx_pattern/app/data/repository/posts_repository.dart';
import 'package:getx_pattern/app/ui/android/details/widgets/bottom_card_widget.dart';
import 'package:getx_pattern/app/ui/android/details/widgets/top_card_widget.dart';
import 'package:http/http.dart' as http;
import 'package:slimy_card/slimy_card.dart';

class DetailsPage extends StatelessWidget {
//repository injection
  final MyRepository repository =
      MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DetailsPage')),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(24),
            child: GetX<DetailsController>(
              init: DetailsController(repository: this.repository),
              builder: (_) {
                _.post = Get.find<HomeController>().post;
                return SlimyCard(
                  color: Colors.red,
                  width: 200,
                  topCardHeight: 400,
                  bottomCardHeight: 200,
                  borderRadius: 15,
                  topCardWidget: CardTopCustomWidget(),
                  bottomCardWidget: CardBottomCustomWidget(),
                  slimeEnabled: true,
                );
              },
            )),
      ),
    );
  }
}
