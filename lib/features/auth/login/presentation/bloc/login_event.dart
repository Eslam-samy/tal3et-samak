part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent(
      {this.phone, this.password, this.imei, this.token, this.deviceType});

  final String? phone;
  final String? password;
  final String? imei;
  final String? token;
  final DeviceType? deviceType;

  @override
  List<Object> get props => [];
}

class PostLoginEvent extends LoginEvent {
  const PostLoginEvent(
    String phone,
    String password,
    String imei,
    String token,
    DeviceType deviceType,
  ) : super(
          phone: phone,
          password: password,
          imei: imei,
          token: token,
          deviceType: deviceType,
        );
}
