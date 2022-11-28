import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/bloc/profile/profile_event.dart';
import 'package:SPES_PFclient/presentation/bloc/profile/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required Openapi api,
  })  : _api = api,
        super(const ProfileState()) {
    _pfApi = api.getPfApi();
    _tokenLogic = api.getTokenLogic();
    on<FetchProfileInfoEvent>(_onFetchProfileInfo);
  }

  final Openapi _api;
  var _pfApi;
  var _tokenLogic;

  Future<void> _onFetchProfileInfo(
    FetchProfileInfoEvent event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      var idPf = await _tokenLogic.getPfId();
      var result = await _pfApi.getPfInfoByIdPfIdPfGet(idPf: idPf);
      PfInfoWithIds pfInfo = result.data;

      Map<String, String?> info = {};
      List<Map<String, String?>> addressList = [];
      List<Map<String, String?>> maritalStatusList = [];
      List<Map<String, String?>> citizenshipList = [];

      info['Nome'] = pfInfo?.firstname;
      info['Cognome'] = pfInfo?.lastname;
      info['Soprannome'] = pfInfo?.nicknames;
      info['Genere'] = pfInfo?.gender.toString();
      info['Data di Nascita'] = pfInfo?.birthDate.toString();
      info['Nazione di Nascita'] = pfInfo?.birthNationId;
      info['Città di Nascita'] = pfInfo?.birthCity;
      info['Distretto Sanitario'] = pfInfo?.sanitaryDistrictId;

      for (var address in pfInfo.addressList!.values) {
        Map<String, String> addressAttributes = {
          'Data inizio': address.fromDate.toString(),
          'Indirizzo': address.address,
          'Tipo': address.addressTypeId.toString()
        };
        addressList.add(addressAttributes);
      }

      for (var maritalStatus in pfInfo.maritalStatusList!.values) {
        Map<String, String> maritalStatusAttributes = {
          'Data inizio': maritalStatus.fromDate.toString(),
          'Stato Civile': maritalStatus.maritalStatusCode.toString(),
        };
        maritalStatusList.add(maritalStatusAttributes);
      }

      for (var citizenship in pfInfo.citizenshipList!.values) {
        Map<String, String> citizenshipAttributes = {
          'Data inizio': citizenship.fromDate.toString(),
          'Cittadinanza': citizenship.nationId.toString(),
        };
        citizenshipList.add(citizenshipAttributes);
      }

      emit(SuccessFetchedProfileInfoState(
          info, maritalStatusList, addressList, citizenshipList));
    } on DioError catch (e) {
      if (e.response?.statusCode == 404) {
        emit(NotFoundFetchedProfileInfoState());
      } else {
        emit(FailFetchedProfileInfoState(e.response?.statusCode));
      }
    } catch (e) {
      emit(const FailFetchedProfileInfoState(null));
    }
  }
}
