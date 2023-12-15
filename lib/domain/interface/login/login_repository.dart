abstract class LoginRepository {
  Future login(Map<String, dynamic> data);
  Future verify(Map<String, dynamic> data);
}
