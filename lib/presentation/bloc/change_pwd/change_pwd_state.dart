import 'package:equatable/equatable.dart';

class ChangePwdState extends Equatable {
  const ChangePwdState({
    this.oldPassword = '',
    this.password = '',
    this.confirmPassword = '',
    this.errorMsg = '',
  });

  final String oldPassword;
  final String confirmPassword;
  final String password;
  final String errorMsg;

  ChangePwdState copyWith({
    String? confirmPassword,
    String? password,
    String? oldPassword,
    String? errorMsg,
  }) {
    return ChangePwdState(
      oldPassword: oldPassword ?? this.oldPassword,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }

  @override
  List<Object?> get props => [oldPassword, password, confirmPassword, errorMsg];
}

class ChangePwdSuccess extends ChangePwdState {
  @override
  List<Object?> get props => [];
}
