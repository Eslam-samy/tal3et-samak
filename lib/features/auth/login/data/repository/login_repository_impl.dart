import 'dart:io';

import 'package:dio/dio.dart';
import 'package:talet_samak/core/my_log.dart';
import 'package:talet_samak/core/resources/data_state.dart';
import 'package:talet_samak/features/auth/login/data/data_source/remote/login_api_service.dart';
import 'package:talet_samak/features/auth/login/data/model/login_response.dart';
import 'package:talet_samak/features/auth/login/demain/repository/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  final LoginAPiService _loginAPiService;

  LoginRepositoryImpl(this._loginAPiService);

  @override
  Future<DataState<LoginResponse>> login(String? phone, String? password,
      String? imei, String? token, DeviceType? deviceType) async {
    try {
      String stringValue = deviceType.toString().split('.').last;
      final httpResponse = await _loginAPiService.login(
          phone, password, imei, token, stringValue);

          ConsoleLogger.info(httpResponse.data.toString());
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
