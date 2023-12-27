import 'package:talet_samak/core/resources/data_state.dart';
import 'package:talet_samak/features/auth/login/demain/entities/login_entity.dart';

enum DeviceType { android, iphone }

abstract class LoginRepository {
  Future<DataState<LoginEntity>> login(
    String? phone,
    String? password,
    String? imei,
    String? token,
    DeviceType? deviceType,
  );
}
