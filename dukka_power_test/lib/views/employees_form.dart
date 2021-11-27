import 'package:dukka_power_test/views/employees_records.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../models/employee_model.dart';
import '../models/database_model.dart';

class EmployeesForm extends StatelessWidget {
  final Function insertFunction; // this will receive the addItem function
  EmployeesForm({required this.insertFunction, Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();
  static final RegExp nameRegExp = RegExp(r'^[a-z A-Z]+$');
  static final RegExp numberRegExp =
      RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');

  // set variables to collect user input
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var positionController = TextEditingController();
  var salaryController = TextEditingController();
  var database = DatabaseConnect();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text('CREATE EMPLOYEE PROFILE',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal)),
            ),
            SizedBox(height: 50.0),
            Container(
              child: Text(
                'Full Name',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: nameController,
                      validator: (name) =>
                          name != null && !nameRegExp.hasMatch(name)
                              ? 'Enter a valid name'
                              : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      controller: phoneController,
                      validator: (number) =>
                          number != null && !numberRegExp.hasMatch(number)
                              ? 'Enter a valid number'
                              : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      child: Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      controller: emailController,
                      validator: (email) =>
                          email != null && !EmailValidator.validate(email)
                              ? 'Enter a valid email'
                              : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      child: Text(
                        'Position',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      controller: positionController,
                      validator: (position) =>
                          position != null && !nameRegExp.hasMatch(position)
                              ? 'position must be letters'
                              : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      child: Text(
                        'Salary',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      controller: salaryController,
                      validator: (number) =>
                          number != null && !numberRegExp.hasMatch(number)
                              ? 'In correct format'
                              : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    SizedBox(
                      height: 55.0,
                      child: TextButton(
                        onPressed: () async {
                          var employee;
                          final form = _formkey.currentState!;
                          if (form.validate()) {
                            employee = Employee(
                                fullname: nameController.text,
                                phoneNumber: phoneController.text,
                                email: emailController.text,
                                position: positionController.text,
                                salary: salaryController.text);
                          }
                          // passing employee data as a parameter in the insertFunction
                          insertFunction(employee);
                          await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => infopage()),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        child: Text(
                          'SAVE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
