import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DBUtils {
  static const String _tableName = 'user_photos';
  static Future<sql.Database> connect() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'photos.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE $_tableName(id INTEGER PRIMARY KEY, image TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<int> insert(String table, Map<String, Object> data) async {
    final db = await DBUtils.connect();
    return db.insert(
      table,
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DBUtils.connect();
    return db.query(table);
  }

  static Future<int> deleteById(int id) async {
    final db = await DBUtils.connect();
    return await db.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }

  static const String _tableNameHistory = 'history_weather';
  static Future<sql.Database> connectDb() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'history.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE $_tableNameHistory(id INTEGER PRIMARY KEY, title TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<int> insertHistory(
      String table, Map<String, Object> data) async {
    final db = await DBUtils.connect();
    return db.insert(
      table,
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getDataHistory(String table) async {
    final db = await DBUtils.connect();
    return db.query(table);
  }
}
