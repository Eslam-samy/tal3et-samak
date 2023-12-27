import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:talet_samak/core/error/error_model.dart';
import 'package:talet_samak/core/my_log.dart';
import 'package:talet_samak/core/resources/data_state.dart';
import 'package:talet_samak/core/usecases/save_token_usecase.dart';
import 'package:talet_samak/features/auth/login/demain/entities/login_entity.dart';
import 'package:talet_samak/features/auth/login/demain/repository/login_repository.dart';
import 'package:talet_samak/features/auth/login/demain/use_cases/login.dart';
import 'package:talet_samak/features/auth/login/demain/use_cases/validate_login_form.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUseCase loginUseCase;
  SaveTokenUseCase saveTokenUseCase;
  ValidateFormUseCase validateFormUseCase;

  LoginBloc(
    this.loginUseCase,
    this.saveTokenUseCase,
    this.validateFormUseCase,
  ) : super(LoginInitial()) {
    on<PostLoginEvent>(onLoginEvent);
  }

  void onLoginEvent(PostLoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    final LoginParams params = LoginParams(
        phone: event.phone,
        password: event.password,
        imei: event.imei,
        token: event.token,
        deviceType: event.deviceType);
    final validationResult = await validateFormUseCase(params: params);

    if (validationResult.isNotEmpty) {
      emit(ErrorValidationState(validationErrors: validationResult));
    } else {
      final dataState = await loginUseCase(params: params);
      if (dataState is DataSuccess) {
        await saveTokenUseCase(params: dataState.data!.data!.accessToken!);
        emit(LoadedLoginState(login: dataState.data!));
      }

      if (dataState is DataFailed) {
        final exception = dataState.error!;
        emit(ErrorLoginState(
            dioException: exception,
            // ignore: prefer_null_aware_operators
            messaage: parseDioError(exception) != null
                ? parseDioError(exception)!.message
                : null));
      }
    }
  }
}
