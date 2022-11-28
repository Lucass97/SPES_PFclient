import 'package:flutter/material.dart';
import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/bloc/change_pwd/change_pwd_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/doc/doc_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/login/login_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/permission/permission_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/profile/profile_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/report/report_bloc.dart';
import 'package:SPES_PFclient/presentation/screens/login/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/routes.dart';
import 'presentation/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //TokenLogic tokenLogic = TokenLogic();
  final api = Openapi();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChangePwdBloc>(
          create: (_) => ChangePwdBloc(api: api),
        ),
        BlocProvider<LoginBloc>(
          create: (_) => LoginBloc(api: api),
        ),
        BlocProvider<ProfileBloc>(
          create: (_) => ProfileBloc(api: api),
        ),
        BlocProvider<ReportsBloc>(
          create: (_) => ReportsBloc(api: api),
        ),
        BlocProvider<DocsBloc>(
          create: (_) => DocsBloc(api: api),
        ),
        BlocProvider<PermissionsBloc>(
          create: (_) => PermissionsBloc(api: api),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SPESPF_client',
          theme: ThemeData(fontFamily: 'Roboto', primaryColor: Colors.blueGrey),
          initialRoute: LoginScreen.routeName,
          routes: routes),
    );
  }
}
