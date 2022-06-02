import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:helpist/main.dart';
import 'package:helpist/testMenu.dart';


class resultatDIVA extends StatelessWidget {
  //resultatDIVA({super.key});

  double var1; //variables for constructor

  resultatDIVA({required this.var1});
  //Constructor for this class, if you use {} then you have mention
  //parameter when you call this class like StateLessPage(var1:"hello", var2:"abc", int1:12);
  //var3 is optional parameter, by default its value is "Hello";
  //if you don't use {} braces then call class like StateLessPage("hello", "abc", 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(children: [Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '\n \n Nous estimons qu`il y a ' + var1.toString() + '% de chances que vous soyez TDAH. \n ATTENTION : ceci n`équivaut en RIEN un diagnostic officiel. Ce chiffre représente notre encouragement à contacter un psychiatre capable de vous diagnostiquer.',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black),
        ),
      ),
        ButtonBar(
          children: [
            ElevatedButton(
                child: Text("Retour aux tests"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TestMenu(title: 'Tests',)));
                }
            )
          ],
        )
    ])
    );
  }


}