import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authk_event.dart';
part 'authk_state.dart';

class AuthkBloc extends Bloc<AuthkEvent, AuthkState> {
  AuthkBloc() : super(AuthkInitial()) {
    on<AuthkEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
