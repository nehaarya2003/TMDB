
import 'package:sample/view/content/model/auth/auth_response_model.dart';

abstract class IAuthRepository {
  Future<AuthResponseModel> loginUser(String userName, String password);
  Future<AuthResponseModel> createUser(String userName, String password);
}