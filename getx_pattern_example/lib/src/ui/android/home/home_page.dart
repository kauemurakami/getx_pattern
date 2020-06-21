import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/home/controller.dart';
import 'package:getx_pattern/src/data/provider/api.dart';
import 'package:getx_pattern/src/data/repository/repository.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
//repository injection
  final MyRepository repository =
      MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Container(
        child: GetX<MyController>(
            init: MyController(repository: this.repository),
            initState: Get.find<MyController>().getAll(),
            builder: (_) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: _.postList[index].title,
                    subtitle: _.postList[index].subtitle,
                    onTap: ()=> _.details(),
                  );
                },
                itemCount: _.postList.length,
              );
            }),
      ),
    );
  }
}
