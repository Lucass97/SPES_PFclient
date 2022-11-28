import 'package:equatable/equatable.dart';

class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object?> get props => [];
}

class FetchProfileInfoState extends ProfileState {}

class FetchingProfileInfoState extends ProfileState {}

class FailFetchedProfileInfoState extends ProfileState {
  const FailFetchedProfileInfoState(this.statusCode);

  final int? statusCode;

  @override
  List<Object?> get props => [statusCode];
}

class SuccessFetchedProfileInfoState extends ProfileState {
  const SuccessFetchedProfileInfoState(this.attributes, this.maritalStatusList,
      this.addressList, this.citizenshipList);

  final Map<String, String?> attributes;
  final List<Map<String, String?>> maritalStatusList;
  final List<Map<String, String?>> addressList;
  final List<Map<String, String?>> citizenshipList;

  @override
  List<Object?> get props =>
      [attributes, maritalStatusList, addressList, citizenshipList];
}

class NotFoundFetchedProfileInfoState extends ProfileState {}
