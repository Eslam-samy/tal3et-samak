import 'package:talet_samak/core/usecases/usecase.dart';
import 'package:talet_samak/features/auth/login/demain/use_cases/login.dart';
import 'package:talet_samak/features/auth/login/presentation/bloc/login_bloc.dart';

class ValidateFormUseCase
    implements UseCase<List<ValidationErrorType>, LoginParams> {
  ValidateFormUseCase();

  @override
  Future<List<ValidationErrorType>> call({LoginParams? params}) {
    final List<ValidationErrorType> list = [];

    if (params != null) {
      if (params.phone == null ||
          params.phone!.isEmpty ||
          params.phone!.length < 11) {
        list.add(ValidationErrorType.invalidPhone);
      }

      if (params.password == null || params.password!.isEmpty) {
        list.add(ValidationErrorType.invalidPassword);
      }

      if (params.imei == null || params.imei!.isEmpty) {
        list.add(ValidationErrorType.invalidImei);
      }

      if (params.token == null || params.token!.isEmpty) {
        list.add(ValidationErrorType.invalidToken);
      }

      if (params.deviceType == null) {
        list.add(ValidationErrorType.invalidDeviceType);
      }
    }

    return Future.value(list);
  }
}
