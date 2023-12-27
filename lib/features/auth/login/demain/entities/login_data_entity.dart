import 'package:equatable/equatable.dart';
import 'package:talet_samak/core/models/user_entity.dart';

class LoginDataEntity extends Equatable {
  final UserEntity? data;
  final String? accessToken;
  final String? tokenType;

  const LoginDataEntity({
    this.data,
    this.accessToken,
    this.tokenType,
  });

  @override
  List<Object?> get props => [
        data,
        accessToken,
        tokenType,
      ];
}
