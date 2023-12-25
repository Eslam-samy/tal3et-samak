part of 'remote_home_bloc.dart';

sealed class RemoteHomeState extends Equatable {
  const RemoteHomeState();

  @override
  List<Object> get props => [];
}

final class HomeLoading extends RemoteHomeState {}

final class LoadedHomeState extends RemoteHomeState {
  final HomeEntity home;

  const LoadedHomeState({required this.home});

  @override
  List<Object> get props => [home];
}

final class ErrorHomeState extends RemoteHomeState {
  final DioException dioException;

  const ErrorHomeState({required this.dioException});

  @override
  List<Object> get props => [dioException];
}
