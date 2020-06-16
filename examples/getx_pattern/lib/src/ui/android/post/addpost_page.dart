import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AddPostPage extends StatelessWidget {

//repository injection
final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('AddPostPage')),

    body: Container(
      child: GetX<MyController>(
        init: MyController(repository: repository),
        builder: (_){
          return Container();
        }),
      ),
    );
  }
}