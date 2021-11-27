import 'package:dukka_power_test/views/employee_details.dart';
import 'package:flutter/material.dart';
import '../models/employee_model.dart';

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

  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () { Navigator.of(context).pop(); },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Message"),
      content: Text("This feature is not available at the moment."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  _EmployeesState createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {

  var color = Colors.transparent;

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
              MaterialPageRoute(
                  builder: (context) => EmployeeDetail(
                        fullname: widget.fullname,
                        email: widget.email,
                        position: widget.position,
                        phoneNumber: widget.phoneNumber,
                      )),
            );
          },
          onHover: (value) {
            if (value) {
              //The mouse is hovering.
              setState(() {

              });
            } else {
              //The mouse is no longer hovering.
              setState(() {

              });
            }
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
                Theme(
                  data: Theme.of(context).copyWith(
                    highlightColor: color,
                    splashColor: color,
                    hoverColor: color,
                  ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(110.0, 0.0, 10.0, 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  // add delete method
                                  widget.showAlertDialog(context);
                                },
                                icon: Icon(Icons.edit)),
                            SizedBox(width: 10.0),
                            IconButton(
                                onPressed: () {
                                  // add delete method
                                  widget.deleteFunction(anEmployee);
                                },
                                icon: Icon(Icons.delete)),
                          ],
                        ),
                      ),
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
