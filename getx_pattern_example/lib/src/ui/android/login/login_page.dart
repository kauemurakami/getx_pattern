import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/login_controller.dart/login_controller.dart';
import 'package:getx_pattern/src/data/provider/user_api.dart';
import 'package:getx_pattern/src/data/repository/user_repository.dart';
import 'package:getx_pattern/src/ui/android/login/widgets/form_widget.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatelessWidget {
//repository injection
  final UserRepository userRepository =
      UserRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LoginPage')),
      body: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 16, left: 32, right: 32),
          child: GetX<LoginController>(
            init: LoginController(userRepository: userRepository),
            builder: (_) {
            return CustomForm();
          }),
        ),
      ),
    );
  }
}
