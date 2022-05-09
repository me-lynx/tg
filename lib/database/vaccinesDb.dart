import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tg/database/createdb.dart';
import 'package:tg/database/vaccinesDao.dart';
import 'package:tg/model/vaccines.dart';

class VaccinesDb extends VaccinesDao {
  Database? db;
  Future open() async {
    if (db == null || !db!.isOpen) {
      final path = await getDatabasesPath();
      final dbPath = join(path, 'vaccines.db');
      db = await openDatabase(dbPath, version: 1, onCreate: (db, version) {
        db.execute(CREATE_TABLE_VACCINES);
      });
    }
  }

  Future<void> insert(Vaccines vaccines) async {
    await open();
    await db!.insert('vaccines', vaccines.toJson());
  }
}
