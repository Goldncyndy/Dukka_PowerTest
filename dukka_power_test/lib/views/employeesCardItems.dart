import 'package:dukka_power_test/views/employee_details.dart';
import 'package:flutter/material.dart';
import '../models/employee_model.dart';
import 'home.dart';

class Employees extends StatefulWidget {
  final int id;
  final String fullname;
  final String email;
  final String phoneNumber;
  final String position;
  final String salary;
  Function insertFunction;
  Function deleteFunction;


  Employees(
      {required this.id,
      required this.fullname,
      required this.phoneNumber,
      required this.email,
      required this.position,
      required this.salary,
      required this.insertFunction,
      required this.deleteFunction,
      Key? key})
      : super(key: key);

  @override
  _EmployeesState createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  @override
  Widget build(BuildContext context) {
    bool showEditButton = false;
    // create local employee
    var anEmployee = Employee(
        id: widget.id,
        fullname: widget.fullname,
        phoneNumber: widget.phoneNumber,
        email: widget.email,
        position: widget.position,
        salary: widget.salary);

    return Container(
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EmployeeDetail(
                fullname: widget.fullname,
              )),
            );
          },
          child: Row(
            children: [
              Container(
                child: new Image.asset(
                  'images/anime.png',
                  height: 100.0,
                  width: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 30.0),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.fullname,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      widget.position,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      widget.phoneNumber,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      widget.email,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              // add delete method
                              //widget.editFunction(anEmployee);
                            },
                            icon: Icon(Icons.edit)),
                        SizedBox(width: 10.0),
                        IconButton(
                            onPressed: () {
                              // add delete method
                              widget.deleteFunction(anEmployee);
                            },
                            icon: Icon(Icons.close)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
