part of 'login_bloc.dart';

enum ValidationErrorType {
  invalidPhone,
  invalidPassword,
  invalidImei,
  invalidToken,
  invalidDeviceType,
}

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoadedLoginState extends LoginState {
  final LoginEntity login;

  const LoadedLoginState({required this.login});

  @override
  List<Object> get props => [login];
}

final class ErrorLoginState extends LoginState {
  final DioException dioException;
  final String? messaage;

  const ErrorLoginState({this.messaage, required this.dioException});

  @override
  List<Object> get props => [dioException];
}

final class ErrorValidationState extends LoginState {
  final List<ValidationErrorType> validationErrors;

  const ErrorValidationState({required this.validationErrors});

  @override
  List<Object> get props => [validationErrors];
}
