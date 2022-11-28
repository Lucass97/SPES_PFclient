import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/services/model/login.dart';
import 'package:SPES_PFclient/presentation/bloc/login/login_event.dart';
import 'package:SPES_PFclient/presentation/bloc/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required Openapi api,
  })  : _api = api,
        super(const LoginState()) {
    _tokenLogic = api.getTokenLogic();
    _authApi = api.getAuthApi();
    on<LoginUsernameChangedEvent>(_onUsernameChanged);
    on<LoginPasswordChangedEvent>(_onPasswordChanged);
    on<LoginSubmittedEvent>(_onSubmitted);
  }

  final Openapi _api;
  var _tokenLogic;
  var _authApi;

  void _onUsernameChanged(
    LoginUsernameChangedEvent event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(username: event.username, error: false),
    );
  }

  void _onPasswordChanged(
    LoginPasswordChangedEvent event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(password: event.password, error: false),
    );
  }

  Future<void> _onSubmitted(
    LoginSubmittedEvent event,
    Emitter<LoginState> emit,
  ) async {
    try {
      Login login = (LoginBuilder()
            ..username = state.username
            ..password = state.password)
          .build();
      var result = await _authApi.authAuthPost(login: login);
      var jwt = result.data.jwt;
      var firstAccess = result.data.firstAccess;
      _tokenLogic.setToken(jwt);
      _api.setBearerAuth('HTTPBearer', jwt);
      emit(LoginSuccess(firstAccess: firstAccess));
    } catch (e) {
      emit(LoginState(
          username: state.username, password: state.password, error: true));
    }
  }
}
