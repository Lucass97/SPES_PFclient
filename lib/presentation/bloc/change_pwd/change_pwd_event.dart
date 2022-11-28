import 'package:equatable/equatable.dart';

abstract class ChangePwdEvent extends Equatable {
  const ChangePwdEvent();

  @override
  List<Object> get props => [];
}

class ChangePwdOldPasswordChangedEvent extends ChangePwdEvent {
  const ChangePwdOldPasswordChangedEvent(this.oldPassword);

  final String oldPassword;

  @override
  List<Object> get props => [oldPassword];
}

class ChangePwdPasswordChangedEvent extends ChangePwdEvent {
  const ChangePwdPasswordChangedEvent(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class ChangePwdConfirmPasswordChangedEvent extends ChangePwdEvent {
  const ChangePwdConfirmPasswordChangedEvent(this.confirmPassword);

  final String confirmPassword;

  @override
  List<Object> get props => [confirmPassword];
}

class ChangePwdSubmittedEvent extends ChangePwdEvent {
  const ChangePwdSubmittedEvent();
}
