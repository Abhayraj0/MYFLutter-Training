
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDataBase {
  Future<Database> setDatabase() async {
    var myDirectory = await getApplicationDocumentsDirectory();
    var path = join(myDirectory.path,'My_db');
    var database = await openDatabase(path,version: 1, onCreate: userLogin);
    return database;
  }

  Future<void> userLogin(Database database, int version) async{
    String sql = "CREATE TABLE Login(id integer primary key autoincrement, name text, phone text, email text, pass text, conPass text)";
    await database.execute(sql);
  }
}