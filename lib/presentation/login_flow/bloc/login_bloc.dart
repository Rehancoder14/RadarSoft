import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:radarsoft/domain/usecases/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSendOTP>((event, emit) async {
      emit(LoginLoading());
      final loginData = await LoginUseCase.login(event.phoneNumber);

      log(loginData.message.toString());
      emit(const LoginLoaded());
    });

    on<LoginVerifyOTP>((event, emit) async {
      emit(LoginLoading());
      final loginData = await LoginUseCase.verify(event.phoneNumber, event.otp);

      log(loginData.toString());
      emit(const LoginLoaded());
    });
  }
}
