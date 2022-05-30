import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:helpist/main.dart';


class TestDIVA extends StatelessWidget {
  TestDIVA({super.key});
  bool value1 = false;
  List<bool> Tvalue = [] ;


  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Test DIVA"),
        ),
          child: Column(children: [
            Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Première question',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black54),
            ),
          ),
        Expanded(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [CheckboxListTile(
                title: Text('vrai'),
                value: false,
                onChanged: (bool? value) {
                  setState(() {
                  Tvalue[0] = value!;
                });
                },
              )],
            ),
        ),
            flex: 1),
      ])
    );
    throw UnimplementedError();
  }

  void setState(Null Function() param0) {}
}