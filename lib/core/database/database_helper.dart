import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();

    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'ufc_gym.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT UNIQUE,
        password TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE members(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        memberId TEXT,
        name TEXT,
        phone TEXT,
        address TEXT,
        joiningDate TEXT,
        membershipPlan TEXT,
        expiryDate TEXT,
        status TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE attendance(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        memberId TEXT,
        date TEXT,
        status TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE expenses(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        amount REAL,
        date TEXT
      )
    ''');

    await db.insert("users", {
      "username": "TEST",
      "password": "test",
    });
  }

  Future<bool> login(String username, String password) async {
    final db = await database;

    final result = await db.query(
      "users",
      where: "username=? AND password=?",
      whereArgs: [username, password],
    );

    return result.isNotEmpty;
  }
}
// ===================== MEMBERS ======================

Future<int> insertMember(Map<String, dynamic> member) async {
  final db = await database;

  return await db.insert(
    'members',
    member,
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Map<String, dynamic>>> getMembers() async {
  final db = await database;

  return await db.query(
    'members',
    orderBy: 'id DESC',
  );
}

Future<int> updateMember(
    int id,
    Map<String, dynamic> member,
    ) async {
  final db = await database;

  return await db.update(
    'members',
    member,
    where: 'id=?',
    whereArgs: [id],
  );
}

Future<int> deleteMember(int id) async {
  final db = await database;

  return await db.delete(
    'members',
    where: 'id=?',
    whereArgs: [id],
  );
}
