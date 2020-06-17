import 'package:get/get.dart';
import 'package:getx_pattern/src/data/model/user_model.dart';
import 'package:getx_pattern/src/data/repository/user_repository.dart';
import 'package:meta/meta.dart';

class LoginController extends RxController {

  final UserRepository userRepository;
  LoginController({@required this.userRepository}) : assert(userRepository != null);
  
  final _user = UserModel().obs;
  get user => this._user.value;
  set user(value) => this._user.value = value;
  
  login(){
    
  }

  signIn(user){
    userRepository.signIn(user);
  }
  signUp(user){
    userRepository.signUp(user);
  }
}