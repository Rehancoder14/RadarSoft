import 'dart:developer';

import 'package:radarsoft/core/core/constants/api_constants.dart';
import 'package:radarsoft/data/repositories/api_repository_impl.dart';
import 'package:radarsoft/domain/interface/login/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future login(Map<String, dynamic> data) async {
    var response =
        await ApiRepositoryImpl().get(ApiConstants.sendOtp, data: data);
    log(response.toString());
    return response;
  }

  @override
  Future verify(Map<String, dynamic> data) async {
    var response =
        await ApiRepositoryImpl().get(ApiConstants.verifyOtp, data: data);
    return response;
  }
}
