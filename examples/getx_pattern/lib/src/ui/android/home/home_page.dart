import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/home/home_controller.dart';
import 'package:getx_pattern/src/data/provider/my_api.dart';
import 'package:getx_pattern/src/data/repository/my_repository.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatelessWidget {

//repository injection
final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MyHome')),

    body: Container(
      child: GetX<MyController>(
        init: MyController(repository: repository),
        builder: (_){
          return Container(
            child: Text('oi'),
          );
        }),
      ),
    );
  }
}