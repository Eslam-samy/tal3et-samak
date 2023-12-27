import 'package:talet_samak/features/auth/login/data/model/login_response_data.dart';
import 'package:talet_samak/features/auth/login/demain/entities/login_entity.dart';

class LoginResponse extends LoginEntity {
  const LoginResponse({
    super.status,
    super.message,
    super.data,
  });
  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      data: json.containsKey('data')
          ? LoginResponseData.fromJson(json['data'])
          : null,
      message: json['message'],
      status: json['status'],
    );
  }
}
