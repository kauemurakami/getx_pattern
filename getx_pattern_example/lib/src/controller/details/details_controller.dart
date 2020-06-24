import 'package:get/get.dart';
import 'package:getx_pattern/src/data/model/model.dart';
import 'package:getx_pattern/src/data/repository/posts_repository.dart';
import 'package:meta/meta.dart';

class DetailsController extends RxController {

  final MyRepository repository;
  DetailsController({@required this.repository}) : assert(repository != null);

 final _post = MyModel().obs;
 get post => this._post.value;
 set post(value) => this._post.value = value;


editar(post){

}
deletar(id){}

}