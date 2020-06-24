import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/details/details_controller.dart';
import 'package:getx_pattern/src/controller/home/home_controller.dart';
import 'package:getx_pattern/src/data/provider/api.dart';
import 'package:getx_pattern/src/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;

class DetailsPage extends StatelessWidget {
//repository injection
  final MyRepository repository =
      MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DetailsPage')),
      body: Container(
        height: MediaQuery.of(context).size.height / 3,
          child: Column(
        children: <Widget>[
          GetX<DetailsController>(
            init: DetailsController(repository: this.repository),
            builder:(_){
              _.post = Get.find<HomeController>().post;
              return Text(_.post.title);
            }
          )
        ],
      )),
    );
  }
}
