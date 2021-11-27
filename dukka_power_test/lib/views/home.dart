import 'package:dukka_power_test/controllers/appBarController.dart';
import 'package:dukka_power_test/controllers/drawer.dart';
import 'package:dukka_power_test/views/employeesForm.dart';
import 'package:flutter/material.dart';
import '../models/employee_model.dart';
import '../models/database_model.dart';
import '../views/employeesForm.dart';

void main() async {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var database = DatabaseConnect();

  void addItem(Employee employee) async {
    await database.insertEmployee(employee);
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
        body: SingleChildScrollView(
          child: Column(
            children: [EmployeesForm(insertFunction: addItem)],
          ),
        ));
  }
}
