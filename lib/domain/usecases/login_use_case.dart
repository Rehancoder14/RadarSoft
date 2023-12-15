import 'package:radarsoft/domain/modal/login_model.dart';

import '../../data/repositories/login_repository_impl.dart';

class LoginUseCase {
  static Future<LoginModel> login(String phone) async {
    var data = <String, dynamic>{"phone": phone};
    LoginRepositoryImpl loginRepository = LoginRepositoryImpl();
    LoginModel loginResponse = await loginRepository.login(data);

    return loginResponse;
  }

  static Future verify(String phone, String otp) async {
    var data = <String, dynamic>{"phone": phone, "otp": otp};
    LoginRepositoryImpl loginRepository = LoginRepositoryImpl();
    var loginResponse = await loginRepository.verify(data);

    return loginResponse;
  }
}
