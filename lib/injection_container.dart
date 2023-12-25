import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talet_samak/features/home/home_screen/data/data_source/remote/home_api_service.dart';
import 'package:talet_samak/features/home/home_screen/data/repository/home_repository_impl.dart';
import 'package:talet_samak/features/home/home_screen/demain/repository/home_repository.dart';
import 'package:talet_samak/features/home/home_screen/demain/use_cases/get_home.dart';
import 'package:talet_samak/features/home/home_screen/presentation/bloc/home/remote/remote_home_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependancies() async {
  //dio
  sl.registerSingleton<Dio>(Dio());

  //dependancies
  sl.registerSingleton<HomeApiService>(HomeApiService(sl()));

  sl.registerSingleton<HomeRepository>(HomeRepositoryImpl(sl()));

  //usecase
  sl.registerSingleton<GetHomeUseCase>(GetHomeUseCase(sl()));

  //blocs
  sl.registerFactory<RemoteHomeBloc>(() => RemoteHomeBloc(sl()));
}
