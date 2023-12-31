import 'package:LoginSignupWorkshop/equipment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to the Library Cafe Services System!'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
        ListTile(
          //announcement part
          title: Text('Announcements'),
          //input in annoucement
          subtitle: Text('Use code FLUTTER20 for 20% off!'),
          onTap: () {
            // Handle the announcement tap if needed
          },
        ),
            ListTile(
              title: Text('Rent equipment'),
              onTap: () {
                // Handle item 1 tap
                //Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => EquipmentApp()));
              },
            ),
            //ListTile(
             // title: Text('Rent Book'),
             // onTap: () {
               // // Handle item 2 tap
                //Navigator.pop(context);
                //Navigator.push(context, MaterialPageRoute(builder: (context) => RentBook()));
              //},
            //),
            //ListTile(
              //title: Text('Report Damage'),
              //onTap: () {
                // Handle item 3 tap
                //Navigator.pop(context);
                //Navigator.push(context, MaterialPageRoute(builder: (context) => ReportDamage()));
              //},
            //),
          //],
        //),
            //add on
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Handle the settings tap if needed
              },
            ),
  ]),
    ));
  }
}