import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/home/controller.dart';
import 'package:getx_pattern/src/data/provider/api.dart';
import 'package:getx_pattern/src/data/repository/posts_repository.dart';
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
            init: MyController(repository: repository),
            initState: (state) { Get.find<MyController>().getAll() ;},
            builder: (_) {
              return 
              _.postList.length < 1
              ? Center(child: CircularProgressIndicator(),)
              :
              ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_.postList[index].title ?? 'a'),
                    subtitle: Text(_.postList[index].body ?? 'b'),
                    onTap: ()=> _.details(_.postList[index]),
                  );
                },
                itemCount: _.postList.length,
              );
            }),
      ),
    );
  }
}
