import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'customCardWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        title: 'Flutter Demo',
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoPage(
          title: 'Accueil',
        ));
  }
}

class CupertinoPage extends StatelessWidget {
  const CupertinoPage({Key? key, this.title = "Default title"})
      : super(key: key);
  final String title;

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
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(title),
              ),
              child: ListView(
                  // padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Bienvenue",
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            customCardWidget(
                                title: "Aujourd'hui",
                                content:
                                    "Rappels pour aujourd'hui.\nEvènements à venir aujourd'hui...",
                                action: TextButton(
                                    onPressed: () {},
                                    child: Text("Mon calendrier"))),
                            customCardWidget(
                                title: "Demain",
                                content:
                                "Rappels pour demain.\nEvènements à venir demain...",
                                action: TextButton(
                                    onPressed: () {},
                                    child: Text("Mes tâches à faire"))),
                            customCardWidget(
                                title: "Plus tard",
                                content:
                                "Rappels pour plus tard.\nEvènements à venir plus tard...",
                                action: TextButton(
                                    onPressed: () {},
                                    child: Text("Mon calendrier"))),
                            SizedBox(height: 50),
                            customCardWidget(title: "Le saviez-vous ?",content: "Petite info croustillante ici."),
                            SizedBox(height: 50),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                            customCardWidget(title: "Titre",content: "Texte à afficher."),
                          ],
                        ),
                      ),
                    ),
                  ]),
            );
          });
        });
  }
}
