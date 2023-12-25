import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:talet_samak/core/resources/data_state.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/home.dart';
import 'package:talet_samak/features/home/home_screen/demain/use_cases/get_home.dart';

part 'remote_home_event.dart';
part 'remote_home_state.dart';

class RemoteHomeBloc extends Bloc<RemoteHomeEvent, RemoteHomeState> {
  final GetHomeUseCase _getHomeUseCase;
  RemoteHomeBloc(this._getHomeUseCase) : super(HomeLoading()) {
    on<GetHomeEvent>(onGetHome);
  }
  void onGetHome(GetHomeEvent event, Emitter<RemoteHomeState> emit) async {
    final dataState = await _getHomeUseCase();
    if (dataState is DataSuccess && dataState.data != null) {
      emit(LoadedHomeState(home: dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(ErrorHomeState(dioException: dataState.error!));
    }
  }
}
