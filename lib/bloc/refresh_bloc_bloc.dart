import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'refresh_bloc_event.dart';
part 'refresh_bloc_state.dart';

class RefreshBlocBloc extends Bloc<RefreshBlocEvent, RefreshBlocState> {
  RefreshBlocBloc() : super(Loaded());

  @override
  Stream<RefreshBlocState> mapEventToState(
    RefreshBlocEvent event,
  ) async* {
    if (event is RefreshEvnt) {
      yield Loading();
      
      // During the Loading state we can do additional checks like,
      // if the internet connection is available or not etc..
      await Future.delayed(
        Duration(seconds: 4),
      ); // This is to simulate that refresh process

      yield Loaded(); // In this state we can load the expected interface
    }
  }
}
