import 'dart:io';

import 'package:dio/dio.dart';
import 'package:talet_samak/core/resources/data_state.dart';
import 'package:talet_samak/features/home/home_screen/data/data_source/remote/home_api_service.dart';
import 'package:talet_samak/features/home/home_screen/data/model/home.dart';
import 'package:talet_samak/features/home/home_screen/demain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeApiService _homeApiService;

  HomeRepositoryImpl(this._homeApiService);

  @override
  Future<DataState<Home>> getHome() async {
    try {
      final httpResponse = await _homeApiService.getHome();
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
