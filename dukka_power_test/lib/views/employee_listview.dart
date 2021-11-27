import 'package:flutter/material.dart';
import '/views/employees_cardItems.dart';
import '../models/database_model.dart';


class EmployeeList extends StatelessWidget {

  // create an object of database connect
  var database = DatabaseConnect();
  final Function insertFunction;
  final Function deleteFunction;
  EmployeeList({
    required this.insertFunction,
    required  this.deleteFunction,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: FutureBuilder(
          future: database.getEmployee(),
          initialData: [],
          builder: (BuildContext context, AsyncSnapshot<List> snapshot){
            var data = snapshot.data; // shows list of employees
            var datalength = data!.length;
            return datalength == 0 ?
            Center(child: Text('no data found'),
            ) :
            ListView.builder(
              itemCount: datalength,
              itemBuilder: (context, i) => Employees(
                id: data[i].id,
                fullname: data[i].fullname,
                email: data[i].email,
                phoneNumber: data[i].phoneNumber,
                position: data[i].position,
                salary: data[i].salary,
                insertFunction:insertFunction,
                deleteFunction:deleteFunction,
              ),
            );
          },
        ),
      ),
    );
  }
}