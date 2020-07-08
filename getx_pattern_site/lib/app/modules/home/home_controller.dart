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
  
   List<Widget> telas = [
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

  final _screen = 0.obs;
  get screen => this._screen.value;
  set screen(value) => this._screen.value = value;

}