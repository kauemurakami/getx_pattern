import 'package:get/get.dart';
import 'package:getx_pattern/src/ui/android/details/details_page.dart';
import 'package:getx_pattern/src/ui/android/home/home_page.dart';

class MyRoutes {

  static final routes = {
    '/home' : GetRoute(page: MyHomePage()),
    '/details' : GetRoute(page: DetailsPage()),
  };
}