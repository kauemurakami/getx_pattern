import 'dart:convert';
import 'package:getx_pattern/app/data/model/model.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {

final http.Client httpClient;
MyApiClient({@required this.httpClient});

getAll() async {
  try {
    var response = await httpClient.get(baseUrl);
    if(response.statusCode == 200){
      Iterable jsonResponse = json.decode(response.body);
        List<MyModel> listMyModel = jsonResponse.map((model) => MyModel.fromJson(model)).toList();
      return listMyModel;
    }else print ('erro');
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