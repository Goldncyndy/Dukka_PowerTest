import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../models/employee_model.dart';


  class Home extends StatefulWidget {
 // const Home({Key? key}) : super(key: key);


  //final Function insertFunction ; // this will receive the addItem function
  //UserInput({required this.insertFunction,
   // Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formkey = GlobalKey<FormState>();
  static final RegExp nameRegExp = RegExp(r'^[a-z A-Z]+$');
  static final RegExp numberRegExp = RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
  static final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var positionController = TextEditingController();
  var salaryController = TextEditingController();

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
            padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Text(
                      'CREATE EMPLOYEE PROFILE',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                      )
                  ),
                ),
                SizedBox(height: 50.0),
                Container(
                  child: Text(
                    'Full Name',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal
                    ),
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
                          validator: (value){
                            if(value == null || !nameRegExp.hasMatch(value)){
                              //allow upper and lower case alphabets and space
                              return "Enter Correct Name";
                            }else{
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          controller: phoneController,
                          validator: (value){
                            if(value == null || !numberRegExp.hasMatch(value)){
                              //  r'^[0-9]{10}$' pattern plain match number with length 10
                              return "Enter Correct Number";
                            }else{
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: Text(
                            'Email',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          controller: emailController,
                          validator: (value){
                            if(value == null || emailRegExp.hasMatch(value)){
                              return "Enter Correct Email Address";
                            }else{
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: Text(
                            'Position',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          controller: positionController,
                          validator: (value) => value == null
                              ?'Input required' : null,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: Text(
                            'Salary',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          controller: salaryController,
                          validator: (value) => value == null
                              ?'Input required' : null,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0),
                        SizedBox(height: 55.0,
                          child: TextButton(onPressed: () {
                            var employ;
                            final form = _formkey.currentState!;
                            if (form.validate()){
                              Navigator.pop(context, {
                              employ = Employee(
                                fullname: nameController.text,
                                email: emailController.text,
                                phoneNumber: phoneController.text,
                                position: positionController.text,
                                salary: salaryController.text,
                              )
                            });
                          }
                          },
                            style: ButtonStyle(backgroundColor: MaterialStateProperty. all(Colors. black)),
                            child: Text('SAVE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

