import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todoapplication/Database/Model.dart/note.dart';

class DatabaseConnection {
  static const String db_name = "Notes.db";
  static const String tableName = "Note";
  Database? _database;

  Future<Database> get noteDatabase async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await initDatabase();
      return _database!;
    }
  }

  Future<Database> initDatabase() async {
    return openDatabase(join(await getDatabasesPath(), db_name),
        onCreate: (db, version) async {
      await db.execute(
          "create table $tableName(id integer primary key autoincrement, name text, desc text)");
    }, version: 1);
  }

  insertData(NoteModel? noteModel) async {
    final con = await noteDatabase;
    return await con!.insert(tableName, noteModel!.NoteMap(),);
  }

  displayNote() async {
    final con = await noteDatabase;
    return con!.query(tableName);
  }

  updateNote(NoteModel? noteModel) async {
    final con = await noteDatabase;
    return await con!.update(tableName,noteModel!.NoteMap(), where: 'id=?', whereArgs: [noteModel.id]);

  }

  deleteNote(NoteModel? noteModel) async {
    final con = await noteDatabase;
    return await con!.delete(tableName, where: 'id=?', whereArgs: [noteModel!.id]);
  }
}
