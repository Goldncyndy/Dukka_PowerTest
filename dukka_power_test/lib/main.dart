import 'package:flutter/material.dart';
import 'Screens/home.dart';
import 'Screens/employees.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Home(),
     '/employees': (context) => Employees(),

    },
  ));
}