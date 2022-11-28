import 'package:flutter/material.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  static String routeName = "/ciccio";

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final String _name = 'Franco';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 243, 245),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 45.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                        text: 'Benvenuto\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey)),
                    TextSpan(
                        text: '$_name!',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent)),
                  ],
                ),
              )),
          _MainMenuBody(),
        ]));
  }
}

class _MainMenuBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<MenuData> menu = [
      MenuData(Icons.notifications_active_outlined, 'Permessi'),
      MenuData(LineariconsFree.file_empty, 'Referti'),
      MenuData(LineariconsFree.license, 'Documenti'),
      MenuData(Iconic.user, 'Profilo')
    ];

    return Scrollbar(
      thickness: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: menu.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            menu[index].icon,
                            size: 60,
                          ),
                          const SizedBox(height: 30),
                          Text(
                            menu[index].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuData {
  MenuData(this.icon, this.title);

  final IconData icon;
  final String title;
}
