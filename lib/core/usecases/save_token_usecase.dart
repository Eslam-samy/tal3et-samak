import 'package:shared_preferences/shared_preferences.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/core/my_log.dart';
import 'package:talet_samak/core/usecases/usecase.dart';

class SaveTokenUseCase implements UseCase<bool?, String> {
  final SharedPreferences prefs;

  SaveTokenUseCase(this.prefs);
  @override
  Future<bool?> call({String? params}) async {
    try {
      return prefs.setString(AuthToken, params!);
    } catch (error) {
      ConsoleLogger.error(error.toString());
      return false;
    }
  }
}
