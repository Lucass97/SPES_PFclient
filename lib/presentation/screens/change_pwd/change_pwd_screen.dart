import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/presentation/bloc/change_pwd/change_pwd_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/change_pwd/change_pwd_event.dart';
import 'package:SPES_PFclient/presentation/bloc/change_pwd/change_pwd_state.dart';
import 'package:SPES_PFclient/presentation/screens/login/login_screen.dart';

class ChangePwdScreen extends StatefulWidget {
  const ChangePwdScreen({super.key, required this.title});

  static String routeName = "/changePwd";

  final String title;

  @override
  State<ChangePwdScreen> createState() => _ChangePwdScreenState();
}

class _ChangePwdScreenState extends State<ChangePwdScreen> {
  late final bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<ChangePwdBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
        bloc: BlocProvider.of<ChangePwdBloc>(context),
        listener: (BuildContext context, ChangePwdState state) {
          if (state is ChangePwdSuccess) {
            Navigator.of(context).pushNamed(LoginScreen.routeName);
          }
        },
        child: BlocBuilder<ChangePwdBloc, ChangePwdState>(
            builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
                child: SingleChildScrollView(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Cambia Password',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 25.0, bottom: 0),
                  child: TextField(
                    onChanged: (String old_password) {
                      context
                          .read<ChangePwdBloc>()
                          .add(ChangePwdOldPasswordChangedEvent(old_password));
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Vecchia password',
                        hintText: '********'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    onChanged: (String password) {
                      context
                          .read<ChangePwdBloc>()
                          .add(ChangePwdPasswordChangedEvent(password));
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Inserisci la nuova password'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 20),
                  child: TextField(
                    onChanged: (String confirm_password) {
                      context.read<ChangePwdBloc>().add(
                          ChangePwdConfirmPasswordChangedEvent(
                              confirm_password));
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Conferma password',
                        hintText: 'Conferma la tua nuova password'),
                  ),
                ),
                BlocBuilder(
                    bloc: BlocProvider.of<ChangePwdBloc>(context),
                    builder: (BuildContext context, ChangePwdState state) {
                      if (state.errorMsg != '') {
                        return Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 5, bottom: 20),
                            child: Text(state.errorMsg,
                                style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)));
                      }
                      return const SizedBox();
                    }),
                Container(
                  constraints: const BoxConstraints(
                      minWidth: 125,
                      maxWidth: 250,
                      minHeight: 25,
                      maxHeight: 50),
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      context
                          .read<ChangePwdBloc>()
                          .add(const ChangePwdSubmittedEvent());
                    },
                    child: const Text(
                      'Invia',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ))),
          );
        }));
  }
}
