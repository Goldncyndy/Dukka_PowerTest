import 'package:flutter/material.dart';

class AppBarController extends StatelessWidget {
  const AppBarController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Text(
            'SAMASYS',
            style: TextStyle(
                letterSpacing: 16.0,
                fontWeight: FontWeight.normal,
                fontSize: 40,
                color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150.0, 0.0, 0.0, 0.0),
            child: Text(
              'Combat salary fraud',
              textAlign: TextAlign.left,
              style: TextStyle(
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.black),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: Colors.black),
    );
  }
}
