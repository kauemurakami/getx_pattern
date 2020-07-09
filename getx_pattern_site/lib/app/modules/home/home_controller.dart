import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_pattern_site/app/modules/apresentacao/apresentacao_page.dart';
import 'package:getx_pattern_site/app/modules/controller/controller_page.dart';
import 'package:getx_pattern_site/app/modules/data/data_page.dart';
import 'package:getx_pattern_site/app/modules/getx/getx_page.dart';
import 'package:getx_pattern_site/app/modules/model/model_page.dart';
import 'package:getx_pattern_site/app/modules/provider/providar_page.dart';
import 'package:getx_pattern_site/app/modules/repository/repository_page.dart';
import 'package:getx_pattern_site/app/modules/routes/routes_pages.dart';
import 'package:getx_pattern_site/app/modules/tutorials/tutorials_page.dart';
import 'package:getx_pattern_site/app/modules/ui/ui_page.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  List<String> topics = [
    'Home'.tr,
    'Estrutura'.tr,
    'GetX'.tr,
    'Data'.tr,
    'Provider'.tr,
    'Model'.tr,
    'Repository'.tr,
    'Controller'.tr,
    'UI',
    'Rotas'.tr,
    'Tutoriais'.tr,
  ];
  final box = GetStorage();

  final _themeIsDark = false.obs;
  get themeIsDark => this._themeIsDark.value;
  set themeIsDark(value) => this._themeIsDark.value = value;

  @override
  onInit() {
    box.writeIfNull('key', false);
    this.themeIsDark = box.read('key');
  }

  @override
  void onReady() {
       changeTheme();
    super.onReady();
  }

  final _screen = 0.obs;
  get screen => this._screen.value;
  set screen(value) => this._screen.value = value;

  changeTheme() async{
    Get.changeTheme(
        this.themeIsDark == false ? ThemeData.light() : ThemeData.dark());
        box.write('key', this.themeIsDark );
        this.themeIsDark = !this.themeIsDark;
  }
}
