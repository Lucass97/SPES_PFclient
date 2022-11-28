import 'package:equatable/equatable.dart';

class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object?> get props => [];
}

class FetchingProfileInfoEvent extends ProfileEvent {}

class FetchProfileInfoEvent extends ProfileEvent {}

class FetchedProfileInfoEvent extends ProfileEvent {}
