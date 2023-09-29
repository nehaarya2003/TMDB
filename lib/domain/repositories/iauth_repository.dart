
abstract class IAuthRepository {
  Future<bool> loginUser(String login, String senha);
  Future<bool> createUser(String login, String senha);
}