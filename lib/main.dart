import 'package:flutter/material.dart';
import 'WindowSillGrid.dart';
import 'PoolTableGrid.dart';
import 'StudyDeskGrid.dart';
import 'SmallSwimmingPoolGrid.dart';
import 'CustomGrid.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Plant3r Garden Size',
      home: GardenSizePage(),
    ),
  );
}

class GardenSizePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
        ),),
        centerTitle: true,
        title: Text('P L A N T 3 R',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: Colors.green[600],
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(40),
            child: Text(
              'What is the approximate size of your garden?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),),

          RaisedButton(
              child: Text('Window Sill sized'),
              textColor: Colors.white,
              color: Colors.green[600],
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WindowSillGrid()));
              }),
          RaisedButton(
              child: Text('Study Desk sized'),
              textColor: Colors.white,
              color: Colors.green[600],
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StudyDeskGrid()));
              }),
          RaisedButton(
              child: Text('Pool Table sized'),
              textColor: Colors.white,
              color: Colors.green[600],
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PoolTableGrid()));
              }),
          RaisedButton(
              child: Text('Small Swimming Pool sized'),
              textColor: Colors.white,
              color: Colors.green[600],
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SmallSwimmingPoolGrid()));
              }),
          RaisedButton(
              child: Text('Custom Sized Garden'),
              textColor: Colors.white,
              color: Colors.green[600],
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CustomGridInput()));
              })
        ],
       ),
    );
  }
}
