part of 'refresh_bloc_bloc.dart';

@immutable
abstract class RefreshBlocState {}

class Loaded extends RefreshBlocState {}

class Loading extends RefreshBlocState{}