part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoaded extends LoginState {
  const LoginLoaded();
}

class LoginError extends LoginState {
  final String? message;
  const LoginError(this.message);
}

class LoginOTP extends LoginState {}
