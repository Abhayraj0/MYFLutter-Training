import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDatabaseConnectionAss {
  Future<Database> setDatabaseAss() async {
    var myDir = await getApplicationDocumentsDirectory();
    var path = join(myDir.path,'my_ad');
    var database = await openDatabase(path,version: 1, onCreate: createSql);
    return database;
  }
  Future<void> createSql(Database db, int version) async {
    String sql = "CREATE TABLE myTable(id integer primary key autoincrement, name text, desc text, date text, piyority text)";
    await db.execute(sql);
  }
}