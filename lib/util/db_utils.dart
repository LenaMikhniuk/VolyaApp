import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DBUtils {
  static Future<sql.Database> connect() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'photos.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE user_photos(id INTEGER PRIMARY KEY, image TEXT)',
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
}
