import 'package:SPES_PFclient/services/api.dart';
import 'package:SPES_PFclient/presentation/bloc/change_pwd/change_pwd_event.dart';
import 'package:SPES_PFclient/services/model/user_info_for_update.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'change_pwd_state.dart';

class ChangePwdBloc extends Bloc<ChangePwdEvent, ChangePwdState> {
  ChangePwdBloc({
    required Openapi api,
  })  : _api = api,
        super(const ChangePwdState()) {
    _pfApi = api.getPfApi();
    _tokenLogic = api.getTokenLogic();
    on<ChangePwdOldPasswordChangedEvent>(_onChangePwdOldPasswordChanged);
    on<ChangePwdPasswordChangedEvent>(_onChangePwdPasswordChanged);
    on<ChangePwdConfirmPasswordChangedEvent>(
        _onChangePwdConfirmPasswordChanged);
    on<ChangePwdSubmittedEvent>(_onSubmitted);
  }

  final Openapi _api;
  var _tokenLogic;
  var _pfApi;

  void _onChangePwdOldPasswordChanged(
    ChangePwdOldPasswordChangedEvent event,
    Emitter<ChangePwdState> emit,
  ) {
    emit(
      state.copyWith(
        oldPassword: event.oldPassword,
      ),
    );
  }

  void _onChangePwdPasswordChanged(
    ChangePwdPasswordChangedEvent event,
    Emitter<ChangePwdState> emit,
  ) {
    emit(
      state.copyWith(password: event.password, errorMsg: ''),
    );
  }

  void _onChangePwdConfirmPasswordChanged(
    ChangePwdConfirmPasswordChangedEvent event,
    Emitter<ChangePwdState> emit,
  ) {
    emit(
      state.copyWith(confirmPassword: event.confirmPassword, errorMsg: ''),
    );
  }

  Future<void> _onSubmitted(
    ChangePwdSubmittedEvent event,
    Emitter<ChangePwdState> emit,
  ) async {
    try {
      if (state.password != state.confirmPassword) {
        throw DifferentPasswordException();
      }
      UserInfoForUpdate userInfoForUpdate = (UserInfoForUpdateBuilder()
            ..oldPwd = state.oldPassword
            ..newPwd = state.password)
          .build();
      await _pfApi.updatePfUserInfoUserPfPatch(
          userInfoForUpdate: userInfoForUpdate);
      _tokenLogic.deleteToken();
      _api.setBearerAuth('HTTPBearer', '');
      emit(ChangePwdSuccess());
    } on DifferentPasswordException catch (e) {
      emit(state.copyWith(
        errorMsg: 'Password non coincidenti!',
      ));
    } catch (e) {
      emit(state.copyWith(
        errorMsg: 'Password errata!',
      ));
    }
  }
}

class DifferentPasswordException implements Exception {}
