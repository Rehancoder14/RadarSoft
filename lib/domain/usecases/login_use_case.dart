import '../../data/repositories/login_repository_impl.dart';

class LoginUseCase {
  static Future login(String phone) async {
    var data = <String, dynamic>{"phone": phone};
    LoginRepositoryImpl loginRepository = LoginRepositoryImpl();
    var loginResponse = await loginRepository.login(data);

    return loginResponse;
  }

  static Future verify(String phone, String otp) async {
    var data = <String, dynamic>{"phone": phone, "otp": otp};
    LoginRepositoryImpl loginRepository = LoginRepositoryImpl();
    var loginResponse = await loginRepository.verify(data);

    return loginResponse;
  }
}
