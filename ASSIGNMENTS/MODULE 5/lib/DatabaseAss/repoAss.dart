import 'package:mysqfliteassignment/DatabaseAss/dbAss.dart';
import 'package:sqflite/sqflite.dart';

class RepoAssingnment {
  MyDatabaseConnectionAss? _connectionAss;
  Database? database1;

  RepoAssingnment() {
    _connectionAss = MyDatabaseConnectionAss();
  }

  Future<Database?> get UserAssignment async {
    if (database1 != null) {
      return database1;
    } else {
      database1 = await _connectionAss?.setDatabaseAss();
      return database1;
    }
  }

  insertData(table, data) async {
    var con = await UserAssignment;
    return await con!.insert(table, data);
  }

  getData(table) async {
    var con = await UserAssignment;
    // return await con!.query(table);
    return await con!.rawQuery("select * from myTable order by id desc");
  }

  updateData(table, data) async {
    var con = await UserAssignment;
    return await con!
        .update(table, data, where: 'id=?', whereArgs: [data['id']]);
  }

  deleteData(table, data) async {
    var con = await UserAssignment;
    return con!.delete(table, where: 'id=?', whereArgs: [data['id']]);
  }

  searchData(table,name) async {
    var con = await UserAssignment;
    return await con!.query(table,where: "name = ?",whereArgs: name);
  }
}
