import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:helpist/main.dart';
import 'package:helpist/testDIVA.dart';


class TestMenu extends StatelessWidget {
  const TestMenu({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(title),
        ),
      child: ListView(
          children: <Widget>[
          Container(
          height: 200.0,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Test DIVA (TDAH)",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ButtonBar(
                children: [
                  ElevatedButton(
                      child: Text("Faire le test"),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TestDIVA()));
                    }
                  )
                ],
              )
            ]
        ),
    ),
            Container(
                height: 200.0,
                child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Test QSA (autisme)",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      const ButtonBar(
                        children: [
                          ElevatedButton(
                              child: Text("Faire le test"),
                              onPressed: null
                          )
                        ],
                      )
                    ]
                )
            ),
            Container(
                height: 200.0,
                child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Test RAADS (autisme)",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      const ButtonBar(
                        children: [
                          ElevatedButton(
                              child: Text("Faire le test"),
                              onPressed: null
                          )
                        ],
                      )
                    ]
                )
            )
          ]
    )
    );
    throw UnimplementedError();
  }
}