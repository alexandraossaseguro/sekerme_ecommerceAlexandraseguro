part of 'authk_bloc.dart';

abstract class AuthkState extends Equatable {
  const AuthkState();
}

class AuthkInitial extends AuthkState {
  @override
  List<Object> get props => [];
}
