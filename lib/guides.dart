import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'customCardWidget.dart';

class Guides extends StatelessWidget {
  const Guides({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
      child: ListView(
        // padding: const EdgeInsets.all(8),
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Guides et informations",
                style: TextStyle(fontSize: 35.0),
              ),
            ),
            customCardWidget(title: "Le saviez-vous ?",content: "L'autisme est légèrement différent chez les hommes et chez les femmes."),
            customCardWidget(title: "Le saviez-vous ?",content: "Il existe de nombreuses formes d'autisme."),
            customCardWidget(title: "Le saviez-vous ?",content: "On pense que Mozart aurait pu être autiste."),
            customCardWidget(title: "Le saviez-vous ?",content: "Beaucoup de personnes sont autistes sans le savoir."),
            customCardWidget(title: "Le saviez-vous ?",content: "700 000 personnes sont autistes en France. (Source: Inserm)"),
            customCardWidget(title: "Le saviez-vous ?",content: "Les tests d'autisme sont conçus pour les hommes. Il pourrait donc y avoir plus de femmes autistes qu'on ne le pense !"),
            customCardWidget(title: "Le saviez-vous ?",content: "Plus de 60% des autistes ne sont pas scolarisés !"),
          ]),
    );
  }
}
