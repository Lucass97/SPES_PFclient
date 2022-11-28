import 'package:equatable/equatable.dart';

class PermissionsEvent extends Equatable {
  const PermissionsEvent();

  @override
  List<Object?> get props => [];
}

class FetchingPermissionsEvent extends PermissionsEvent {}

class FetchPermissionsEvent extends PermissionsEvent {}

class FetchedPermissionsEvent extends PermissionsEvent {}

class ApplyPermissionsEvent extends PermissionsEvent {
  const ApplyPermissionsEvent(this.userId, this.reportId, this.permission);

  final String userId;
  final String reportId;
  final bool permission;

  @override
  List<Object?> get props => [userId, reportId, permission];
}
