import 'package:sqflite/sqflite.dart';

final String tableUser = 'tb_user';
final String columnLocalId = 'id_user';
final String columnId = '_id';
final String columnName = 'name';
final String columnUsername = 'username';

class UserTable {

  static Future<void> recreateTable(Database db) async {
    await db.execute('''
          drop table if exists tb_user
        ''');
    await UserTable.createTable(db);
  }

  static Future<void> createTable(Database db) async {
    await db.execute('''
          create table tb_user (
            id_user integer primary key autoincrement, 
            _id text not null,
            name text not null,
            username text not null)
          ''');
  }

}
