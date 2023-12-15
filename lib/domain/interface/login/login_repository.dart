import 'package:radarsoft/domain/modal/login_model.dart';

abstract class LoginRepository {
  Future<LoginModel> login(Map<String, dynamic> data);
  Future verify(Map<String, dynamic> data);
}
