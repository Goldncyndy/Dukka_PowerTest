import 'package:flutter/material.dart';
import '../models/employee_model.dart';
import '../models/database_model.dart';
import '../views/employeeList.dart';
class infopage extends StatefulWidget {

  const infopage({Key? key}) : super(key: key);

  @override
  _infopageState createState() => _infopageState();
}

class _infopageState extends State<infopage> {
  var textController = TextEditingController();
  var database = DatabaseConnect();

  void addItem(Employee employee) async {
    await database.insertEmployee(employee);
    setState(() {

    });
  }
  void deleteItem(Employee employee) async {
    await database.deleteEmployee(employee);
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity, 70),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Column (
            children: [
              Text('SAMASYS',
                style: TextStyle(
                    letterSpacing: 18.0,
                    fontWeight: FontWeight.normal,
                    fontSize: 40,
                    color: Colors.black
                ),),
              Padding(
                padding: const EdgeInsets.fromLTRB(150.0, 0.0, 0.0, 0.0),
                child: Text('Combat salary fraud',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Colors.black
                  ),),
              ),
            ],
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40.0),
            Text(
                'EMPLOYEES',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal
                )
            ),
            SizedBox(height: 30.0),
            EmployeeList(insertFunction: addItem, deleteFunction:  deleteItem,),
          ],
        ),
      ),

    );
  }
}
