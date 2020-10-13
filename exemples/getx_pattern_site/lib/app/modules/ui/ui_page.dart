import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UiPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('uiPage')),

    body: Container(
      child: Text('Ui')
      ),
    );
  }
}