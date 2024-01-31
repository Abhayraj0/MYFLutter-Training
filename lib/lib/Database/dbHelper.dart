import 'package:inventorymanagementapp/Database/Model/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseDB {
  static const String _databaseName = "User";
  static const String _tableName = "users";
  
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await intiDatabase();
      return _database!;
    }
  }

  Future<Database?> intiDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: (db, version) async {
        await db.execute("create table $_tableName(id integer primary key autoincrement, name text, email text, password text)");
      },
      version: 1,
    );
  }

  insertUser(UsersModel? usersModel) async {
    final con = await database;
    return await con.insert(_tableName, usersModel!.UserMap());
  }

  getUsers() async {
    final con = await database;
    return await con.query(_tableName);
  }

  updateUser(UsersModel? usersModel) async {
    final con = await database;
    return await con.update(_tableName, usersModel!.UserMap(),
        where: "id=?", whereArgs: [usersModel.id]);
  }

  deleteUser(UsersModel? usersModel) async {
    final con = await database;
    return await con.delete(_tableName, where: "id=?", whereArgs: [usersModel!.id]);
  }

  loginUser(String? email, String? password)async {
    final con = await database;
    return await con.rawQuery("select * from $_tableName where email = '$email' and password = '$password' ");
  }
}
