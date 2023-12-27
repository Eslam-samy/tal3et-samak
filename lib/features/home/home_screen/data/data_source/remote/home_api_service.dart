import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/features/home/home_screen/data/model/home.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: BaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET('/home')
  Future<HttpResponse<Home>> getHome(
      @Header('Authorization') String? token,
      );
}
