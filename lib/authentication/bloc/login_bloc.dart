import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial());



  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is UserChanged) {
      print("UserChanged user:${event.username}");
      yield state.copyWith(
        username: event.username,
        isValidUsername: event.username.isNotEmpty,
      );
    } else if (event is PasswordChanged) {
      print("UserChanged password:${event.password}");
      yield state.copyWith(
        password: event.password,
        isValidPassword: event.password.isNotEmpty && event.password.length > 5,
      );
    }if(event is LoginSubmitted){




    }
  }
}
