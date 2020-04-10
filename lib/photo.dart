import 'package:flutter/material.dart';

void main() {
  runApp(Photo());
}

class Photo extends StatefulWidget {
  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PHOTOS'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child:Image(
                image: NetworkImage('https://pixabay.com/photos/tree-sunset-amazing-beautiful-736885/'),
              ) ,
            )
          ],
        ),
      ),
    );
  }
}
