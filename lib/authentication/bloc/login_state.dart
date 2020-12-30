part of 'login_bloc.dart';

@immutable
class LoginState {
  final String username;
  final bool isValidUsername;
  final String password;
  final bool isValidPassword;

  LoginState({
    this.username,
    this.isValidUsername,
    this.password,
    this.isValidPassword,
  });

  factory LoginState.initial() {
    return LoginState(
      username: '',
      isValidUsername: false,
      password: '',
      isValidPassword: false,
    );
  }

  LoginState copyWith({
    String username,
    bool isValidUsername,
    String password,
    bool isValidPassword,
  }) {
    return new LoginState(
      username: username ?? this.username,
      isValidUsername: isValidUsername ?? this.isValidUsername,
      password: password ?? this.password,
      isValidPassword: isValidPassword ?? this.isValidPassword,
    );
  }
}
