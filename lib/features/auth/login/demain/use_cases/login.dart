import 'package:equatable/equatable.dart';
import 'package:talet_samak/core/resources/data_state.dart';
import 'package:talet_samak/core/usecases/usecase.dart';
import 'package:talet_samak/features/auth/login/demain/entities/login_entity.dart';
import 'package:talet_samak/features/auth/login/demain/repository/login_repository.dart';

class LoginUseCase implements UseCase<DataState<LoginEntity>, LoginParams> {
  final LoginRepository _loginRepository;

  LoginUseCase(this._loginRepository);

  @override
  Future<DataState<LoginEntity>> call({LoginParams? params}) {
    return _loginRepository.login(
      params?.phone,
      params?.password,
      params?.imei,
      params?.token,
      DeviceType.android,
    );
  }
}

class LoginParams extends Equatable {
  final String? phone;
  final String? password;
  final String? imei;
  final String? token;
  final DeviceType? deviceType;

  const LoginParams({
    this.imei,
    this.token,
    this.deviceType,
    this.phone,
    this.password,
  });

  @override
  List<Object?> get props => [
        imei,
        token,
        deviceType,
        phone,
        password,
      ];
}
