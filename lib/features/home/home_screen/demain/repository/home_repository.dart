import 'package:talet_samak/core/resources/data_state.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/home.dart';

abstract class HomeRepository {
  Future<DataState<HomeEntity>> getHome(String? token);
}
