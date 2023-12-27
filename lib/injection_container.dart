import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talet_samak/core/usecases/save_token_usecase.dart';
import 'package:talet_samak/features/auth/login/data/data_source/remote/login_api_service.dart';
import 'package:talet_samak/features/auth/login/data/repository/login_repository_impl.dart';
import 'package:talet_samak/features/auth/login/demain/repository/login_repository.dart';
import 'package:talet_samak/features/auth/login/demain/use_cases/login.dart';
import 'package:talet_samak/features/auth/login/demain/use_cases/validate_login_form.dart';
import 'package:talet_samak/features/auth/login/presentation/bloc/login_bloc.dart';
import 'package:talet_samak/features/home/home_screen/data/data_source/remote/home_api_service.dart';
import 'package:talet_samak/features/home/home_screen/data/repository/home_repository_impl.dart';
import 'package:talet_samak/features/home/home_screen/demain/repository/home_repository.dart';
import 'package:talet_samak/features/home/home_screen/demain/use_cases/get_home.dart';
import 'package:talet_samak/features/home/home_screen/presentation/bloc/home/remote/remote_home_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependancies() async {
  //!external
  final sharedPref = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPref);
  
  //dio
  sl.registerSingleton<Dio>(Dio());

  //dependancies
  sl.registerSingleton<HomeApiService>(HomeApiService(sl()));

  sl.registerSingleton<HomeRepository>(HomeRepositoryImpl(sl()));

  //usecase
  sl.registerSingleton<GetHomeUseCase>(GetHomeUseCase(sl(), sl()));
  sl.registerSingleton<ValidateFormUseCase>(ValidateFormUseCase());

  //blocs
  sl.registerFactory<RemoteHomeBloc>(() => RemoteHomeBloc(sl()));

  //________for login feature______
  //login dependancies
  sl.registerSingleton<LoginAPiService>(LoginAPiService(sl()));

  sl.registerSingleton<LoginRepository>(LoginRepositoryImpl(sl()));

  //login usecase
  sl.registerSingleton<LoginUseCase>(LoginUseCase(sl()));
  sl.registerSingleton<SaveTokenUseCase>(SaveTokenUseCase(sl()));

  //login blocs
  sl.registerFactory<LoginBloc>(() => LoginBloc(sl(), sl(), sl()));
}
