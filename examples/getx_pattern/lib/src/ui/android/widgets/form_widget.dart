import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX(builder: (_) {
      return Form(
        key: GlobalKey<FormState>(),
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.text,
              onSaved: (value) => value != null
              ? _.obj = 
            ),
          ],
        ),
      );
    });
  }
}
