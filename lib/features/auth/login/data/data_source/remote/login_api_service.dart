import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/features/auth/login/data/model/login_response.dart';

part 'login_api_service.g.dart';

@RestApi(baseUrl: BaseUrl)
abstract class LoginAPiService {
  factory LoginAPiService(Dio dio) = _LoginAPiService;

  @POST('/login')
  Future<HttpResponse<LoginResponse>> login(
    @Query("phone") String? phone,
    @Query("password") String? password,
    @Query("imei") String? imei,
    @Query("token") String? token,
    @Query("device_type") String? device_type,
  );
}
