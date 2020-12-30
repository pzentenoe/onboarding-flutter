part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class UserChanged extends LoginEvent {
  final String username;

  UserChanged({@required this.username});
}

class PasswordChanged extends LoginEvent {
  final String password;

  PasswordChanged({@required this.password});
}

class LoginSubmitted extends LoginEvent {
  final String username;
  final String password;

  LoginSubmitted({@required this.username, @required this.password});
}
