import 'package:dukka_power_test/views/home.dart';
import 'package:dukka_power_test/views/employees_records.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(padding: EdgeInsets.zero, children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 0.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/anime.png'),
                    radius: 60.0,
                  ),
                ),
              ),
              DrawerHeader(
                  child: Text(
                "SAMASYS",
                style: TextStyle(
                    color: Colors.white, letterSpacing: 2.0, fontSize: 20.0),
              )),
            ],
          ),
          Column(
            children: [
              ListTile(
                title: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text("Home Page",
                      style:
                          TextStyle(color: Colors.white, letterSpacing: 2.0)),
                ),
                subtitle: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => infopage()),
                    );
                  },
                  child: Text("Employees Page",
                      style:
                          TextStyle(color: Colors.white, letterSpacing: 2.0)),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
