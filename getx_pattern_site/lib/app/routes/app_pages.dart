import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/apresentacao/apresentacao_page.dart';
import 'package:getx_pattern_site/app/modules/home/home_page.dart';
import 'package:getx_pattern_site/app/modules/splash/splash_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page:()=> SplashPage(),),
    GetPage(name: Routes.HOME, page:()=> HomePage(),),
    GetPage(name: Routes.APRESENTACAO, page:()=> ApresentacaoPage()),
  ];
}