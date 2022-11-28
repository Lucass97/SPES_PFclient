import 'package:flutter/material.dart';

import 'package:SPES_PFclient/presentation/screens/login/login_screen.dart';
import 'package:SPES_PFclient/presentation/main_layout.dart';
import 'package:SPES_PFclient/presentation/screens/change_pwd/change_pwd_screen.dart';
import 'package:SPES_PFclient/presentation/screens/documents/documents_screen.dart';
import 'package:SPES_PFclient/presentation/screens/home/home_screen.dart';
import 'package:SPES_PFclient/presentation/screens/reports/report_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(title: 'Home'),
  MainLayout.routeName: (context) => const MainLayout(title: 'Main'),
  LoginScreen.routeName: (context) => const LoginScreen(title: 'Login'),
  ReportScreen.routeName: (context) => const ReportScreen(title: 'Referti'),
  DocumentScreen.routeName: (context) =>
      const DocumentScreen(title: 'Documenti'),
  ChangePwdScreen.routeName: (context) =>
      const ChangePwdScreen(title: 'Cambia Password'),
};
