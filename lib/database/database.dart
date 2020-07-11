import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class NbDatabaseProivder{

  NbDatabaseProivder._();
  static final NbDatabaseProivder db = NbDatabaseProivder._();
  static Database _database;

  Future<Database> get database async{
    if(_database != null){
      return _database;
    }

    _database = await initDB();
    return _database;
  }

  initDB() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'NbUsers.db'),
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE users {
            username TEXT PRIMARY KEY,
            password TEXT
          }
        ''');
      },
      version: 1,
    );
  }

  newUser(newUser) async{
    final db = await database;
  
    var res = await db.rawInsert('''
       INSERT INTO users(
         username, password
       ) VALUES (?, ?)
    ''', [newUser.username, newUser.password]);
    return res;
  }

  Future<dynamic> getUser() async {
    final db = await database;
    var res = await db.query("user");
    if(res.length == 0){
      return null;
    } else {
      var resMap = res[0];
      return resMap.isNotEmpty ? resMap: null;
    }
  }
}