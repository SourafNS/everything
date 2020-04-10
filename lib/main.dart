import 'dart:ui';
import 'package:flutter/material.dart';
import 'home.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  bool selected = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
        seconds: 3
    ),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(),),);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    setState(() {
      selected = !selected;
    });

    return Container(
      child: Center(
        child: AnimatedContainer(
          width: selected ? 400.0 : 200.0,
          height: selected ? 200.0 : 400.0,
          alignment: selected ? Alignment.bottomCenter : AlignmentDirectional.centerStart,
          duration: Duration(seconds: 2),
          curve: Curves.slowMiddle,
          child: Image(
            image: AssetImage('assets/everything.jpg'),
          ),
        ),
      ),
    );
  }
}

