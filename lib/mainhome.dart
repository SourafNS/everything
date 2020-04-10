import 'package:flutter/material.dart';

void main()
{
  runApp(Mainhome());
}

class Mainhome extends StatefulWidget {
  @override
  _MainhomeState createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HOME'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage('assets/corona.jpg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

