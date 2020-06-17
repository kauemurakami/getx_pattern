import 'package:getx_pattern/src/data/provider/user_api.dart';
import 'package:meta/meta.dart';

class UserRepository {
  final MyApiClient apiClient;

  UserRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }

  getId(id) {
    return apiClient.getId(id);
  }

  deleteId(id) {
    return apiClient.deleteId(id);
  }

  signIn(user) {
    return apiClient.signIn(user);
  }
  signUp(user) {
    return apiClient.signUp(user);
  }
}
