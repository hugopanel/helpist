import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:helpist/testMenu.dart';

import 'accueil.dart';
import 'calendrier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: 'Flutter Demo',
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _tabs = [
    Accueil(title: "Accueil"),
    Calendrier(title: "Calendrier"),
    //Tache(title: "Tâches"),
    TestMenu(title: "Tests")
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded), label: 'Calendrier'),
          //BottomNavigationBarItem(
              //icon: Icon(Icons.check_rounded), label: 'Tâches'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded), label: 'Tests'),
          BottomNavigationBarItem(
              icon: Icon(Icons.paste_rounded), label: 'Guides'),
        ]),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(builder: (BuildContext context) {
            return _tabs[index];
            // return Accueil(key: key, title: "Accueil");
          });
        });
  }
  
}


// TODO: Se renseigner sur les States.
class CupertinoPage extends StatelessWidget {
  const CupertinoPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded), label: 'Calendrier'),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_rounded), label: 'Tâches'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded), label: 'Tests'),
          BottomNavigationBarItem(
              icon: Icon(Icons.paste_rounded), label: 'Guides'),
        ]),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(builder: (BuildContext context) {
            return Accueil(key: key, title: "Accueil");
            // return Accueil(key: key, title: "Accueil");
          });
        });
  }
}
