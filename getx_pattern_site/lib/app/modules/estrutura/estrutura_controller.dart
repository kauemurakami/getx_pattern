import 'package:get/get.dart';
import 'package:meta/meta.dart';

class EstruturaController extends GetxController {

  final strc = ['assets/images/strc.png','assets/images/strc_module.png'].obs;

  final _structure = 0.obs;
  get structure => this._structure.value;
  set structure(value) => this._structure.value = value;
  
  changeStructure() => this.structure == 0 ? this.structure = 1 : this.structure = 0;

  String structureType() => this.structure == 0 ? 'Packages' : 'Modules' ;
  
}