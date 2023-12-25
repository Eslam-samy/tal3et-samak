part of 'remote_home_bloc.dart';

sealed class RemoteHomeEvent extends Equatable {
  const RemoteHomeEvent();

  @override
  List<Object> get props => [];
}

class GetHomeEvent extends RemoteHomeEvent {
  const GetHomeEvent();
}
