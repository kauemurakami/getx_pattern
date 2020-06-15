import 'dart:convert';
import 'package:getx_pattern/src/data/model/my_model.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

class MyApiClient {

final http.Client httpClient;
MyApiClient({@required this.httpClient});


getAll() async {
  try {
    var response = await httpClient.get(baseUrl);
    if(response.statusCode == 200){
      Map<String, dynamic> jsonResponse = json.decode(response.body);
        List<MyModel> listMyModel = jsonResponse['data'].map<MyModel>((map) { 
          return MyModel.fromJson(map);
        }).toList();
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