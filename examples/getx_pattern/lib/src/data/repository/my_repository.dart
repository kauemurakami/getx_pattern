import 'package:getx_pattern/src/data/provider/my_api.dart';
import 'package:meta/meta.dart';

class MyRepository {

final MyApiClient apiClient;

MyRepository({@required this.apiClient}) : assert(apiClient != null);

getAll(){
  return apiClient.getAll();
}
getId(id){
  return apiClient.getId(id);
}

}