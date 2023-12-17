

import 'package:login/Offline%20DataBase/dpHelper.dart';
import 'package:sqflite/sqflite.dart';

class UserRepo {
  MyDataBase? _myDataBase;
  Database? _database;

  UserRepo() {
    _myDataBase = MyDataBase();
  }

  Future<Database?> get myUserDataModel async {
    if (_database != null) {
        return _database;
    } else{
      _database = await _myDataBase?.setDatabase();
    }
  }

  insertUser(table, data) async {
    var con = await myUserDataModel;
    return await con!.insert(table, data);
  }

  getData(table) async {
    var con = await myUserDataModel;
    return await con!.query(table);
  }
}