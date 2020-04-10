import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'mainhome.dart';
import 'photo.dart';
import 'music.dart';
import 'setting.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Center(
      child: Mainhome(),
    ),
    Center(
      child: Photo(),
    ),
    Center(
      child: Music(),
    ),
    Center(
      child: Setting(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: Scaffold(
        body: SafeArea(

          child: tabs[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.blueAccent,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.black26,
            selectedItemColor: Colors.black,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.photo,
                    size: 30,
                  ),
                  title: Text('Photo')),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.music_note,
                    size: 30,
                  ),
                  title: Text('Music')),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  title: Text('Settings')),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }),
      ),
    );
  }
}
