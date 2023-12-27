import 'package:equatable/equatable.dart';
import 'package:talet_samak/features/auth/login/demain/entities/login_data_entity.dart';

class LoginEntity extends Equatable {
  final String? status;
  final String? message;
  final LoginDataEntity? data;

  const LoginEntity({
    this.status,
    this.message,
    this.data,
  });

  @override
  List<Object?> get props => [
        status,
        message,
        data,
      ];
}
