import 'package:talet_samak/core/models/user.dart';
import 'package:talet_samak/features/auth/login/demain/entities/login_data_entity.dart';

class LoginResponseData extends LoginDataEntity {
  const LoginResponseData({
    super.data,
    super.accessToken,
    super.tokenType,
  });
  factory LoginResponseData.fromJson(Map<String, dynamic> json) {
    return LoginResponseData(
      tokenType: json['token_type'],
      accessToken: json['access_token'],
      data: User.fromJson(json['data']),
    );
  }
}
