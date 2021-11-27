import 'package:dukka_power_test/models/employee_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import './employee_model.dart';

class DatabaseConnect {
  Database? _database;

  Future<Database> get database async {
    final databasePath = await getDatabasesPath();
    const databaseName = 'employee.db';
    final path = join(databasePath, databaseName);
    _database = await openDatabase(path, version: 1, onCreate: _createDb);
    return _database!;
  }

  Future<void> _createDb(Database db, int version) async {
    await db.execute('''
       CREATE TABLE employee(
       id INTEGER PRIMARY KEY AUTOINCREMENT,
       fullname TEXT,
       phoneNumber TEXT,
       email TEXT,
       position TEXT,
       salary TEXT
           )
   ''');
  }

  Future<void> insertEmployee(Employee employee) async {
    final db = await database;
    //insert  the Employee
    await db.insert(
      'employee',
      employee.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> deleteEmployee(Employee employee) async {
    final db = await database;
    await db.delete(
      'employee',
      where: 'id == ? ',
      whereArgs: [employee.id],
    );
  }

  Future<List<Employee>> getEmployee() async {
    final db = await database;
    List<Map<String, dynamic>> items = await db.query(
      'employee',
      orderBy: 'id Desc',
    );
    return List.generate(
      items.length,
      (i) => Employee(
        id: items[i]['id'],
        fullname: items[i]['fullname'],
        phoneNumber: items[i]['phoneNumber'],
        email: items[i]['email'],
        position: items[i]['position'],
        salary: items[i]['salary'],
      ),
    );
  }
  // function to fetch all employee from the database
  Future<List<Employee>> getAllEmployee() async {
    final db = await database;
    // query the database and save the employee as list of maps
    List<Map<String, dynamic>> items = await db.query('employee',
        orderBy: 'id Desc', where: 'isChecked == 1 ');

    return List.generate(
      items.length,
      (i) => Employee(
        id: items[i]['id'],
        fullname: items[i]['fullname'],
        phoneNumber: items[i]['phoneNumber'],
        email: items[i]['email'],
        position: items[i]['position'],
        salary: items[i]['salary'],
      ),
    );
  }
}
