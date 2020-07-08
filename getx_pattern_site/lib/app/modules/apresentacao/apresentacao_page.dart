import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApresentacaoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    body: SafeArea(
          child: Container(
            height: Get.height -100,
            width: Get.width- 100,
          child: Text('AAA')
        ),
    ),
    );
  }
}