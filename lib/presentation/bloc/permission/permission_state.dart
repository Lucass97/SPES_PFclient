import 'package:equatable/equatable.dart';
import 'package:SPES_PFclient/services/openapi.dart';

class PermissionsState extends Equatable {
  const PermissionsState();

  @override
  List<Object?> get props => [];
}

class FetchPermissionState extends PermissionsState {}

class FetchingPermissionsInfoState extends PermissionsState {}

class FailFetchedPermissionsState extends PermissionsState {
  const FailFetchedPermissionsState(this.statusCode);

  final int? statusCode;

  @override
  List<Object?> get props => [statusCode];
}

class SuccessFetchedPermissionState extends PermissionsState {
  const SuccessFetchedPermissionState({required this.permissionList});

  final List<PermissionPartialInfo> permissionList;

  @override
  List<Object?> get props => [permissionList];
}

class NotFoundFetchedPermissionsState extends PermissionsState {}

class SuccessAppliedPermissionState extends PermissionsState {}
