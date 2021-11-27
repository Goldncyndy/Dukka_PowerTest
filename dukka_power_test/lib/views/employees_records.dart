import 'package:dukka_power_test/controllers/app_bar_controller.dart';
import 'package:dukka_power_test/controllers/drawer.dart';
import 'package:flutter/material.dart';
import '../models/employee_model.dart';
import '../models/database_model.dart';
import '../views/employee_listview.dart';

class infopage extends StatefulWidget {
  const infopage({Key? key}) : super(key: key);

  @override
  _infopageState createState() => _infopageState();
}

class _infopageState extends State<infopage> {
  var textController = TextEditingController();
  var database = DatabaseConnect();

  // set up the function to add an employee info to database
  void addItem(Employee employee) async {
    await database.insertEmployee(employee);
    setState(() {});
  }

  // set up the function to delete an employee info from database
  void deleteItem(Employee employee) async {
    await database.deleteEmployee(employee);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: AppBarController(),
      ),
      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40.0),
            Text('EMPLOYEES',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal)),
            SizedBox(height: 30.0),
            EmployeeList(
              insertFunction: addItem,
              deleteFunction: deleteItem,
            ),
          ],
        ),
      ),
    );
  }
}
