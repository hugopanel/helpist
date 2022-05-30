import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import '../Models/Tache.dart';

class TachesDatabase {
  static final TachesDatabase instance = TachesDatabase._init();

  static Database? _database;

  TachesDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('taches.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final nomType = 'TEXT PRIMARY KEY';
    final activeType = 'BOOLEAN';
    final horaireType = 'DATETIME';

    await db.execute('''
    CREATE TABLE $tableTaches ( 
      ${TacheFields.nom} $nomType, 
      ${TacheFields.active} $activeType,
      ${TacheFields.horaire} $horaireType
      )
    ''');
  }

  Future<Tache> create(Tache tache) async {
    final db = await instance.database;

    final nom = await db.insert(tableTaches, tache.toJson());
    return tache.copy(nom: nom);
  }
}
