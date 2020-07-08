import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
   List<Widget> screens = [
     ApresentacaoPage(),
     GetXPage(),
     DataPage(),
     ProviderPage(),
     ModelPage(),
     RepositoryPage(),
     ControllerPage(),
     UiPage(),
     RoutesPage(),
     TutorialsPage(),
    ];

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
    'Tutorials'.tr,
  ];

  final _themeIsDark = false.obs;
  get themeIsDark => this._themeIsDark.value;
  set themeIsDark(value) => this._themeIsDark.value = value;
  
  final _screen = 0.obs;
  get screen => this._screen.value;
  set screen(value) => this._screen.value = value;

  changeTheme(b) => this.themeIsDark = b;

}