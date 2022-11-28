import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:SPES_PFclient/presentation/bloc/profile/profile_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/profile/profile_event.dart';
import 'package:SPES_PFclient/presentation/bloc/profile/profile_state.dart';
import 'package:SPES_PFclient/presentation/screens/login/login_screen.dart';
import 'package:SPES_PFclient/presentation/screens/profile/widgets/profile_list.dart';
import 'package:SPES_PFclient/presentation/screens/change_pwd/change_pwd_screen.dart';

// This class handles the Page to dispaly the user's info on the "Edit Profile" Screen
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.title});

  static String routeName = "/profile";

  final String title;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<ProfileBloc>(context);
    context.read<ProfileBloc>().add(FetchProfileInfoEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
        bloc: BlocProvider.of<ProfileBloc>(context),
        listener: (BuildContext context, ProfileState state) {
          if (state is FailFetchedProfileInfoState) {
            Navigator.pushNamed(context, LoginScreen.routeName);
          }
        },
        child: Scaffold(
          body: Column(
            children: [
              AppBar(
                elevation: 0,
                centerTitle: true,
                automaticallyImplyLeading: false,
                title: Center(
                    child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                )),
              ),
              const Expanded(child: Scrollbar(child: ProfileList()))
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: Align(
              alignment: const Alignment(1, -0.7),
              child: FloatingActionButton.extended(
                label: const Text(
                  'Cambio Password',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                backgroundColor: Colors.red,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ChangePwdScreen(
                                title: 'ChangePwd',
                              )));
                },
              )),
        ));
  }
}
