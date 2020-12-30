import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.initial());

  void usernameChanged(String username) {
    emit(state.copyWith(
      username: username,
      isValidUsername: username.isNotEmpty,
    ));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(
      password: password,
      isValidPassword: password.isNotEmpty && password.length > 5,
    ));
  }

  void loginSubmited() {
    //Llamar al api

    //emit
  }
}
