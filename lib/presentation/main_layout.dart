import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluttericon/iconic_icons.dart';

import 'package:SPES_PFclient/presentation/screens/documents/documents_screen.dart';
import 'package:SPES_PFclient/presentation/screens/permissions/permissions_screen.dart';
import 'package:SPES_PFclient/presentation/screens/profile/profile_screen.dart';
import 'package:SPES_PFclient/presentation/screens/reports/report_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key, required this.title});

  static String routeName = "/home_layout";

  final String title;

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final screens = [
    const PermissionScreen(title: 'Permessi'),
    const ReportScreen(title: 'Referti'),
    const DocumentScreen(title: 'Documenti'),
    const ProfileScreen(title: 'Profilo'),
  ];

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.notifications_active, size: 35),
      const Icon(Icons.file_copy, size: 30),
      const Icon(Icons.wallet, size: 30),
      const Icon(Iconic.user, size: 30)
    ];

    return Scaffold(
      extendBody: true,
      backgroundColor: const Color.fromARGB(255, 239, 243, 245),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromARGB(255, 60, 97, 112),
              blurRadius: 50,
            ),
          ],
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
              iconTheme:
                  const IconThemeData(color: Color.fromARGB(255, 60, 97, 112))),
          child: CurvedNavigationBar(
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: Colors.transparent,
            color: const Color.fromARGB(255, 246, 252, 255),
            height: 65,
            items: items,
            index: _page,
            onTap: (index) {
              setState(() {
                _page = index;
                navigationTapped(index);
              });
            },
          ),
        ),
      ),
    );
  }
}
