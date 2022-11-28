import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginUsernameChangedEvent extends LoginEvent {
  const LoginUsernameChangedEvent(this.username);

  final String username;

  @override
  List<Object> get props => [username];
}

class LoginPasswordChangedEvent extends LoginEvent {
  const LoginPasswordChangedEvent(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class LoginErrorEvent extends LoginEvent {
  const LoginErrorEvent(this.error);

  final bool error;

  @override
  List<Object> get props => [error];
}

class LoginSubmittedEvent extends LoginEvent {
  const LoginSubmittedEvent();
}
