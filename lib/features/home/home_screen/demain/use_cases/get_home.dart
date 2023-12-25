import 'package:talet_samak/core/resources/data_state.dart';
import 'package:talet_samak/core/usecases/usecase.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/home.dart';
import 'package:talet_samak/features/home/home_screen/demain/repository/home_repository.dart';

class GetHomeUseCase implements UseCase<DataState<HomeEntity>, void> {
  final HomeRepository _homeRepository;

  GetHomeUseCase(this._homeRepository);

  @override
  Future<DataState<HomeEntity>> call({void params}) {

    return _homeRepository.getHome();
  }
}
