import 'package:dukka_power_test/controllers/app_bar_controller.dart';
import 'package:dukka_power_test/controllers/drawer.dart';
import 'package:flutter/material.dart';

// set up the variables to enable data passing
class EmployeeDetail extends StatelessWidget {
  final String fullname;
  final String email;
  final String phoneNumber;
  final String position;

  // set up constructors for the declared variables
  const EmployeeDetail(
      {Key? key,
      required this.fullname,
      required this.email,
      required this.phoneNumber,
      required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: AppBarController(),
      ),
      drawer: MainDrawer(),
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
                              '$position',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '$phoneNumber',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              '$email',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text('LOAN RECORD',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal)),
                SizedBox(height: 30.0),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
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
                                  fontWeight: FontWeight.normal),
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
                                Container(
                                  child: Divider(
                                    height: 30.0,
                                    color: Colors.black,
                                    thickness: 2,
                                  ),
                                ),
                                Text('RECEIVABLE:      #100,000'),
                                //SizedBox(width: 20.0),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.0),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
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
                              'JAN',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal),
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
                                  thickness: 2,
                                ),
                                Text('RECEIVABLE:      #100,000'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Text('2019',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal)),
                SizedBox(height: 20.0),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
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
                              'DEC',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal),
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
                                  thickness: 2,
                                ),
                                Text('RECEIVABLE:      #100,000'),
                                //SizedBox(width: 20.0),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
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
                              'NOV',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal),
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
                                  thickness: 2,
                                ),
                                Text('RECEIVABLE:      #100,000'),
                                //SizedBox(width: 20.0),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
