import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'Models/Tache.dart';

import 'accueil.dart';
import 'calendrier.dart';

void main() async {
  // Ouverture de la base de données
  WidgetsFlutterBinding.ensureInitialized();

  final database = openDatabase(
    join(await getDatabasesPath(), 'helpist.db'),

    // Si la base de données n'existe pas encore, il faut la créer :
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE taches(nom TEXT PRIMARY KEY, active BOOLEAN, horaire DATETIME)',
      );
    },

    version: 1,
  );

  Future<void> insertTache(Tache tache) async {
    final db = await database;

    await db.insert(
      'taches',
      tache.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Tache>> taches() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query('taches');

    return List.generate(maps.length, (i) {
      return Tache(
        nom: maps[i]['nom'],
        active: maps[i]['active'],
        horaire: maps[i]['horaire']
      );
    });
  }

  Future<void> updateTache(Tache tache) async {
    final db = await database;

    await db.update(
      'taches',
      tache.toMap(),
      where: 'nom = ?',
      whereArgs: [tache.nom]
    );
  }

  Future<void> deleteTache(Tache tache) async {
    final db = await database;

    await db.delete(
      'taches',
      where: 'nom = ?',
      whereArgs: [tache.nom]
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
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
    Calendrier(title: "Calendrier")
  ];

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
