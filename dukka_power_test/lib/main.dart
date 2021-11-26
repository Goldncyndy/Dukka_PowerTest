import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

 class Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   final _formkey = GlobalKey<FormState>();

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
                           // validator: (String value) {
                           //   if (value.isEmpty) {
                           //      return 'field required';
                           //   }
                           //      return null;
                           // },
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
                           decoration: InputDecoration(
                             border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(8.0)
                             ),
                           ),
                         ),
                         SizedBox(height: 40.0),
                         SizedBox(height: 55.0,
                         child: TextButton(onPressed: () {},
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

