import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'customCardWidget.dart';

class Calendrier extends StatelessWidget {
  const Calendrier({Key? key, required this.title}) : super(key: key);
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
                "Le calendrier n'est pas encore disponible.",
                style: TextStyle(fontSize: 35.0),
              ),
            ),
          ]),
    );
  }
}
