import 'package:flutter/material.dart';

void main()
{
  runApp(Setting());
}

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SETTING'),
        ),
        body: Column(
          children: <Widget>[
            Container(
               child: Icon(
                 Icons.settings,size: 400,color: Colors.deepPurple,
               ),
            )
          ],
        ),
      ),
    );
  }
}
