import 'package:shared_preferences/shared_preferences.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/core/usecases/usecase.dart';

class checkAuthUseCase implements UseCase<bool, void> {
  @override
  Future<bool> call({void params}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(isAuthenticated) ?? false;
  }
}
