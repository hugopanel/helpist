import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'customCardWidget.dart';

class Accueil extends StatelessWidget {
  const Accueil({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
      child: ListView(
        // padding: const EdgeInsets.all(8),
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Bienvenue",
                style: TextStyle(fontSize: 35.0),
              ),
            ),
            Padding(
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
          ]),
    );
  }
}
