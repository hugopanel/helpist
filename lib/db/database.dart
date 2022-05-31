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
    final idType = 'INT PRIMARY KEY';
    final nomType = 'TEXT';
    final activeType = 'BOOLEAN';
    final horaireType = 'DATETIME';

    await db.execute('''
    CREATE TABLE $tableTaches ( 
      ${TacheFields.id} $idType,
      ${TacheFields.nom} $nomType, 
      ${TacheFields.active} $activeType,
      ${TacheFields.horaire} $horaireType
      )
    ''');
  }

  Future<Tache> create(Tache tache) async {
    final db = await instance.database;

    final id = await db.insert(tableTaches, tache.toJson());
    return tache.copy(id: id);
  }

  Future<Tache> readTache(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableTaches,
      columns: TacheFields.values,
      where: '${TacheFields.id} = ?',
      whereArgs: [id]
    );

    if (maps.isNotEmpty) {
      return Tache.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<Tache>> readAllTaches() async {
    final db = await instance.database;

    final orderBy = '${TacheFields.id} ASC';

    final result = await db.query(tableTaches, orderBy: orderBy);

    return result.map((json) => Tache.fromJson(json)).toList();
  }

  Future<int> update(Tache tache) async {
    final db = await instance.database;

    return db.update(
      tableTaches,
      tache.toJson(),
      where: '${TacheFields.id} = ?',
      whereArgs: [tache.id]
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableTaches,
      where: '${TacheFields.id} = ?',
      whereArgs: [id]
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
