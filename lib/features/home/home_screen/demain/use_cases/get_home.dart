import 'package:shared_preferences/shared_preferences.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/core/resources/data_state.dart';
import 'package:talet_samak/core/usecases/usecase.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/home.dart';
import 'package:talet_samak/features/home/home_screen/demain/repository/home_repository.dart';

class GetHomeUseCase implements UseCase<DataState<HomeEntity>, void> {
  final HomeRepository _homeRepository;
  final SharedPreferences prefs;

  GetHomeUseCase(this._homeRepository, this.prefs);

  @override
  Future<DataState<HomeEntity>> call({void params}) async {
    final token = prefs.getString(AuthToken);

    return _homeRepository.getHome(token);
  }
}
