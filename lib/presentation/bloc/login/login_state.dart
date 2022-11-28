import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState(
      {this.username = '', this.password = '', this.error = false});

  final String username;
  final String password;
  final bool error;

  LoginState copyWith({
    String? username,
    String? password,
    bool? error,
  }) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password,
        error: error ?? this.error);
  }

  @override
  List<Object?> get props => [username, password, error];
}

class LoginSuccess extends LoginState {
  const LoginSuccess({this.firstAccess = true});

  final bool firstAccess;

  @override
  List<Object?> get props => [firstAccess];
}
