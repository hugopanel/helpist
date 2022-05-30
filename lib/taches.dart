// Tâches récurrentes

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'customCardWidget.dart';

class Taches extends StatelessWidget {
  const Taches({Key? key, required this.title}) : super(key: key);
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
            Container(
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Tâches récurrentes",
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
                        title: "Tâches récurrentes",
                        content:
                        "hehehehehehe",
                        action: TextButton(
                            onPressed: () {},
                            child: Text("Mes tâches"))),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
