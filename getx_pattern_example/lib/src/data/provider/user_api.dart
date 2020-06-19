import 'dart:convert';
import 'package:getx_pattern/src/data/model/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {

final http.Client httpClient;
MyApiClient({@required this.httpClient});

signIn(user){

}

signUp(user){

}

getAll() async {
  try {
    var response = await httpClient.get(baseUrl);
    if(response.statusCode == 200){
      Iterable jsonResponse = json.decode(response.body);
        List<UserModel> listMyModel = jsonResponse.map((model) => UserModel.fromJson(model)).toList();
      return listMyModel;
    }else print ('erro -get');
  } catch(_){ }
}

getId(id) async {
  try {
      var response = await httpClient.get('baseUrlid');
    if(response.statusCode == 200){
      //Map<String, dynamic> jsonResponse = json.decode(response.body);
    }else print ('erro -get');
  } catch(_){ }
}


}