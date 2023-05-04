import 'dart:developer' as developer;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vascommtest/blocs/userauth/login_event.dart';
import 'package:vascommtest/blocs/userauth/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(initialState) {
    on<LoginEvent>((event, emit) {
      return emit.forEach<LoginState>(
        event.applyAsync(currentState: state, bloc: this),
        onData: (state) => state,
        onError: (error, stackTrace) {
          developer.log('$error',
              name: 'LoginBloc', error: error, stackTrace: stackTrace);
          return ErrorLoginState(error.toString());
        },
      );
    });
  }
}
