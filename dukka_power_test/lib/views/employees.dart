import 'package:flutter/material.dart';

class Employees extends StatefulWidget {
  const Employees({Key? key}) : super(key: key);

  @override
  _EmployeesState createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
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
    );
  }
}
