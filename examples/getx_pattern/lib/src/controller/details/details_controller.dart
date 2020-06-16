import 'package:get/get.dart';
import 'package:getx_pattern/src/data/model/my_model.dart';

class DetailsController extends RxController {
  final _item = MyModel().obs;
  get item => this._item.value;
  set item(value) => this._item.value = value;
  apagar(){
    print('apagado');
  }
}
