import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/home/home_controller.dart';
import 'package:getx_pattern/src/data/provider/api.dart';
import 'package:getx_pattern/src/data/repository/posts_repository.dart';
import 'package:getx_pattern/src/ui/android/widgets/loading_widget.dart';
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
        child: GetX<HomeController>(
            init: HomeController(repository: this.repository),
            initState: (state) { Get.find<HomeController>().getAll() ;},
            builder: (_) {
              return 
              _.postList.length < 1
              ? LoadingWidget()
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
