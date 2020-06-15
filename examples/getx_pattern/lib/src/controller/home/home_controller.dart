import 'package:get/get.dart';
import 'package:getx_pattern/src/data/repository/my_repository.dart';
import 'package:meta/meta.dart';

class MyController extends RxController {

  final MyRepository repository;
  MyController({@required this.repository}) : assert(repository != null);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}