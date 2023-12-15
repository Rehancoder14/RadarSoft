part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginSendOTP extends LoginEvent {
  final String phoneNumber;
  const LoginSendOTP(this.phoneNumber);
}

class LoginVerifyOTP extends LoginEvent {
  final String phoneNumber;
  final String otp;
  const LoginVerifyOTP(this.phoneNumber, this.otp);
}
