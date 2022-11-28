import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/presentation/bloc/profile/profile_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/profile/profile_state.dart';
import 'package:SPES_PFclient/presentation/screens/profile/widgets/profile_element.dart';
import 'package:SPES_PFclient/presentation/widgets/text.dart';

class ProfileList extends StatefulWidget {
  const ProfileList({super.key});

  @override
  State<ProfileList> createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
        builder: (BuildContext context, ProfileState state) {
      if (state is FetchingProfileInfoState) {
        return const CircularProgressIndicator();
      }
      if (state is SuccessFetchedProfileInfoState) {
        return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              const LeftAlignGreyText(text: 'Dati Anagrafici'),
              Row(children: [
                const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      thickness: 2,
                      width: 20,
                      color: Colors.blue,
                    )),
                Expanded(
                    child: ListView.builder(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.attributes.length,
                  itemBuilder: (context, index) {
                    var keys = state.attributes.keys.toList();
                    return ProfileBox(
                        attributeName: keys[index],
                        attribute: state.attributes[keys[index]] ?? '');
                  },
                ))
              ]),
              const LeftAlignGreyText(text: 'Stato Civile'),
              NestedProfileAttributes(
                  nestedList: state.maritalStatusList, height: 105),
              const LeftAlignGreyText(text: 'Indirizzi'),
              NestedProfileAttributes(
                  nestedList: state.addressList, height: 165),
              const LeftAlignGreyText(text: 'Cittadinanze'),
              NestedProfileAttributes(
                  nestedList: state.citizenshipList, height: 105),
              const SizedBox(height: 80)
            ]));
      }
      if (state is NotFoundFetchedProfileInfoState) {
        return const CenterGreyText(text: 'Utente non trovato!');
      }
      if (state is FailFetchedProfileInfoState) {
        return CenterGreyText(
            text: 'Ops! Qualcosa è andato storto!\nCodice ${state.statusCode}');
      }
      return const SizedBox();
    });
  }
}

class NestedProfileAttributes extends StatelessWidget {
  final List<Map<String, String?>> nestedList;
  final double height;

  const NestedProfileAttributes(
      {super.key, required this.nestedList, required this.height});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      itemCount: nestedList.length,
      itemBuilder: (context, index) {
        var currentMap = nestedList[index];
        return Row(
          children: [
            SizedBox(
                height: height,
                child: const VerticalDivider(
                  thickness: 2,
                  width: 20,
                  color: Colors.blue,
                )),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: currentMap.length,
                itemBuilder: (context, index) {
                  var keys = currentMap.keys.toList();
                  return ProfileBox(
                      attributeName: keys[index],
                      attribute: currentMap[keys[index]] ?? '');
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
