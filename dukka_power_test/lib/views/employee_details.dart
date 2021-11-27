import 'package:dukka_power_test/views/informationPage.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'employeesCardItems.dart';
import '../models/employee_model.dart';
import '../models/database_model.dart';

class EmployeeDetail extends StatelessWidget {
  final String fullname;
  const EmployeeDetail({Key? key, required this.fullname}) : super(key: key);

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40.0),
                Card(
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
                        '$fullname',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Position',
                          style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                            ),
                          ),
                        Text(
                            'PhoneNumber',
                          style: TextStyle(
                           fontWeight: FontWeight.normal,
                          fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                         'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                          ),
                        ],),
                    ),
                SizedBox(height: 30.0),
                ],),
                ),
               SizedBox(height: 30.0),
                Text(
                    'LOAN RECORD',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal
                    )
                ),
                SizedBox(height: 30.0),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 100.0,
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.calendar_today)),
                            Text(
                              'FEB',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30.0),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text('BORROWED:     #50,000'),
                                //SizedBox(width: 20.0),
                                Divider(
                                  height: 30.0,
                                  color: Colors.black,
                                ),
                                Text('BORROWED:      #50,000'),
                                //SizedBox(width: 20.0),
                              ],
                            ),
                          ],
                        ),),
                      SizedBox(height: 10.0),

                      ],
                  ),),
                SizedBox(height: 30.0),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 100.0,
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.calendar_today)),
                            Text(
                              'FEB',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30.0),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text('BORROWED:     #50,000'),
                                //SizedBox(width: 20.0),
                                Divider(
                                  height: 30.0,
                                  color: Colors.black,
                                ),
                                Text('BORROWED:      #50,000'),
                                //SizedBox(width: 20.0),
                              ],
                            ),
                          ],
                        ),),
                      SizedBox(height: 10.0),

                    ],
                  ),),
                SizedBox(height: 30.0),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 100.0,
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.calendar_today)),
                            Text(
                              'FEB',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30.0),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text('BORROWED:     #50,000'),
                                //SizedBox(width: 20.0),
                                Divider(
                                  height: 30.0,
                                  color: Colors.black,
                                ),
                                Text('BORROWED:      #50,000'),
                                //SizedBox(width: 20.0),
                              ],
                            ),
                          ],
                        ),),
                      SizedBox(height: 10.0),

                    ],
                  ),),
                SizedBox(height: 30.0),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 100.0,
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.calendar_today)),
                            Text(
                              'FEB',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30.0),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text('BORROWED:     #50,000'),
                                //SizedBox(width: 20.0),
                                Divider(
                                  height: 30.0,
                                  color: Colors.black,
                                ),
                                Text('BORROWED:      #50,000'),
                                //SizedBox(width: 20.0),
                              ],
                            ),
                          ],
                        ),),
                      SizedBox(height: 10.0),

                    ],
                  ),)
              ],),
            ),
        ),
      ),
    );
  }
}
