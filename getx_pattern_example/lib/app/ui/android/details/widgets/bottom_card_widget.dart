import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/details/details_controller.dart';
import 'package:getx_pattern/app/data/provider/api.dart';
import 'package:getx_pattern/app/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;

class CardBottomCustomWidget extends StatelessWidget {

//repository injection
final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('CardBottomCustomWidget')),

    body: Container(
      child: GetX<DetailsController>(
        builder: (_){
          return Container(
            child: Text(_.post.body),
          );
        }),
      ),
    );
  }
}