import 'package:get/get.dart';

class HomeController extends GetxController {
  
  final _screen = 0.obs;
  get screen => this._screen.value;
  set screen(value) => this._screen.value = value;

}