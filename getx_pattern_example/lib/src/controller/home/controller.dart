import 'package:get/get.dart';
import 'package:getx_pattern/src/data/model/model.dart';
import 'package:getx_pattern/src/data/repository/repository.dart';
import 'package:meta/meta.dart';

class MyController extends RxController {

  final MyRepository repository;
  MyController({@required this.repository}) : assert(repository != null);

  
  final _postsList = List<MyModel>().obs;
  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;

  getAll(){
    repository.getAll().then( (data) => this.postList = data );
  }
  
  details(){
    
  }
}