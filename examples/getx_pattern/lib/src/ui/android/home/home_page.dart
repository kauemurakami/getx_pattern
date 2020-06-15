import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/home/home_controller.dart';
import 'package:getx_pattern/src/data/model/my_model.dart';
import 'package:getx_pattern/src/data/provider/my_api.dart';
import 'package:getx_pattern/src/data/repository/my_repository.dart';
import 'package:getx_pattern/src/ui/android/widgets/loading_widget.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatelessWidget {
//repository injection
  final MyRepository repository =
      MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyHome')),
      body: Container(
        child: GetX<HomeController>(
            init: HomeController(repository: repository),
            initState: (state) { Get.find<HomeController>().getAll();},
            builder: (_) {
              return
              _.items.length < 1 ?
                LoadingWidget() :
              ListView.builder(
                itemCount: _.items.length,
                itemBuilder: (context, index) {
                return ListTile(
                  title: Text( _.items[index].title ?? 'a'),
                  subtitle: Text( _.items[index].body ?? 'b'),
                  onTap: () => _.details(_.items[index]),
                );
              });
            }),
      ),
    );
  }
}
