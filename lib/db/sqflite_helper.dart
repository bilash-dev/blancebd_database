
import 'package:contactapp/model/contact_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class DBHelper{
     static const _createTableContact = '''create_table $tblContact(
    $tblContactColId integer primary key autoincrement,
    $tblContactColDeposit number,
    $tblContactColWithdraw number,
    $tblContactColCurrentBalance number,
    $tblContactColDepositComplete number,
    )'''; //table quiry

    static Future<Database> open() async {
    final root = await getDatabasesPath();
    final dbPath = path.join(root, 'contact_db');
    return await openDatabase(dbPath, version: 1, onCreate: (Database db, version) async{
     await db.execute(
         'CREATE TABLE tblContact (id INTEGER PRIMARY KEY, num deposit,  num withdraw, num currentBalance,  num depositComplete)'
     );
    //db.execute('create table "tbl_contact"()'); //for any quiry execute

    });
  }
  static Future<int> insertContact(ContactModel contactModel) async{
      final db = await open(); 
      return db.insert(tblContact, contactModel.toMap());
  }
}