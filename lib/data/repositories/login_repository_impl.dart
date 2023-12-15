import 'dart:developer';

import 'package:radarsoft/core/core/constants/api_constants.dart';
import 'package:radarsoft/data/repositories/api_repository_impl.dart';
import 'package:radarsoft/domain/interface/login/login_repository.dart';
import 'package:radarsoft/domain/modal/login_model.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<LoginModel> login(Map<String, dynamic> data) async {
    var response = await ApiRepositoryImpl().post(ApiConstants.sendOtp, data);

    log(response.data.toString());
    return LoginModel.fromJson(response.data);
  }

  @override
  Future verify(Map<String, dynamic> data) async {
    var response = await ApiRepositoryImpl().post(ApiConstants.verifyOtp, data);
    return response;
  }
}
