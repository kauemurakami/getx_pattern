import 'package:get/get.dart';
import 'package:getx_pattern/src/data/model/my_model.dart';
import 'package:getx_pattern/src/data/repository/my_repository.dart';
import 'package:meta/meta.dart';

class HomeController extends RxController {
  final MyRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);

  final _items = List<MyModel>().obs;
  get items => this._items.value;
  set items(value) => this._items.value = value;

  getAll() {
    repository.getAll().then((data) => this.items = data);
  }
  
  details(post){
    Get.toNamed('/details', arguments: post);
  }
}
