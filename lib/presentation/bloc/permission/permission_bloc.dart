import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/bloc/permission/permission_event.dart';
import 'package:SPES_PFclient/presentation/bloc/permission/permission_state.dart';

class PermissionsBloc extends Bloc<PermissionsEvent, PermissionsState> {
  PermissionsBloc({
    required Openapi api,
  })  : _api = api,
        super(const PermissionsState()) {
    _reportApi = api.getReportApi();
    _tokenLogic = api.getTokenLogic();
    on<FetchPermissionsEvent>(_onFetchPermissions);
    on<ApplyPermissionsEvent>(_onApplyPermissions);
  }

  final Openapi _api;
  var _reportApi;
  var _tokenLogic;

  Future<void> _onFetchPermissions(
    FetchPermissionsEvent event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(FetchingPermissionsInfoState());
    try {
      var result = await _reportApi.getPermissionsForPfPermissionsGet();
      emit(SuccessFetchedPermissionState(permissionList: result.data.toList()));
    } on DioError catch (e) {
      if (e.response?.statusCode == 404) {
        emit(NotFoundFetchedPermissionsState());
      } else {
        emit(FailFetchedPermissionsState(e.response?.statusCode));
      }
    } catch (e) {
      emit(const FailFetchedPermissionsState(null));
    }
  }

  Future<void> _onApplyPermissions(
    ApplyPermissionsEvent event,
    Emitter<PermissionsState> emit,
  ) async {
    try {
      PermissionToModify permissionToModify = (PermissionToModifyBuilder()
            ..userId = event.userId
            ..reportId = event.reportId
            ..permission = event.permission)
          .build();

      BuiltList<PermissionToModify> lst = BuiltList.of([permissionToModify]);
      _reportApi.setMedicalReportsPermissionsPermissionsPatch(
          permissionToModify: lst);
      emit(SuccessAppliedPermissionState());
    } catch (e) {
      print(e);
    }
  }
}
