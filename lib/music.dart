import 'package:flutter/material.dart';

void main()
{
  runApp(Music());
}
class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MUSIC'),
        ),
        body: Column(
          children: <Widget>[
            Container(
               child: Icon(
                 Icons.music_note,size: 400,color: Colors.indigo,
               ),
            )
          ],
        ),
      ),
    );
  }
}
