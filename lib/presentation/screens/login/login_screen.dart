import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/presentation/bloc/login/login_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/login/login_event.dart';
import 'package:SPES_PFclient/presentation/bloc/login/login_state.dart';
import 'package:SPES_PFclient/presentation/main_layout.dart';
import 'package:SPES_PFclient/presentation/screens/change_pwd/change_pwd_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});

  static String routeName = "/login";

  final String title;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<LoginBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
        bloc: BlocProvider.of<LoginBloc>(context),
        listener: (BuildContext context, LoginState state) {
          if (state is LoginSuccess) {
            if (state.firstAccess) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const ChangePwdScreen(
                            title: 'ChangePwd',
                          )));
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const MainLayout(
                            title: 'ChangePwd',
                          )));
            }
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
          return Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                  child: SingleChildScrollView(
                      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      constraints:
                          const BoxConstraints(minWidth: 50, maxWidth: 100),
                      child: Image.asset(
                        'assets/images/flutter-logo.png',
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 20.0, bottom: 0),
                    child: TextField(
                      onChanged: (String username) {
                        context
                            .read<LoginBloc>()
                            .add(LoginUsernameChangedEvent(username));
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          hintText: 'Inserisci il tuo username'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 20),
                    child: TextField(
                      onChanged: (String password) {
                        context
                            .read<LoginBloc>()
                            .add(LoginPasswordChangedEvent(password));
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Inserisci la tua password'),
                    ),
                  ),
                  BlocBuilder(
                      bloc: BlocProvider.of<LoginBloc>(context),
                      builder: (BuildContext context, LoginState state) {
                        if (state.error) {
                          return const Padding(
                              padding: EdgeInsets.only(
                                  left: 15.0, right: 15.0, top: 5, bottom: 20),
                              child: Text('Credenziali errate!',
                                  style: TextStyle(
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
                            .read<LoginBloc>()
                            .add(const LoginSubmittedEvent());
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  )
                ],
              ))));
        }));
  }
}
