import 'package:inventorymanagementapp/Database/Model/product.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnectionA {
  static const String _databaseNameP = "Product.db";
  static const String tableName = "product";
  Database? database;
  Future<Database> get productDatabase async {
    if (database != null) {
      return database!;
    } else {
      database = await intitDatabaseP();
      return database!;
    }
  }

  Future<Database> intitDatabaseP() async {
    return openDatabase(join(await getDatabasesPath(), _databaseNameP),
        onCreate: (db, version) async {
      await db.execute(
          "create table $tableName(id integer primary key autoincrement, name text, category text, price text, number text)");
    }, version: 1);
  }

  insertProduct(ProductModel? productModel) async {
    final con = await productDatabase;
    return await con.insert(tableName, productModel!.ProductMap());
  }
  displayProduct() async {
    final con = await productDatabase;
    return await con.query(tableName);
  }

  deleteProduct(ProductModel? productModel) async {
    final con = await productDatabase;
    return await con.delete(tableName,where: 'id=?', whereArgs: [productModel!.id]);
  }
  updateProduct(ProductModel? productModel) async {
    final con = await productDatabase;
    return await con.update(tableName, productModel!.ProductMap(), where: "id=?", whereArgs: [productModel.id]);
  }
}
