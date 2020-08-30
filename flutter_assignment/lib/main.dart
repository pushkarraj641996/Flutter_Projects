import 'package:flutter/material.dart';

import './TextControl.dart';
import './displayText.dart';

void main() => runApp(FirstAssignmentApp());

class FirstAssignmentApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAssignmentApp();
  }
}

class _MyAssignmentApp extends State<FirstAssignmentApp> {
  var _listOfString = ['Hello World', 'My Changed Text', 'Go On !!!'];
  var _stringCounter = 0;

  void _changeText() {
    setState(() {
      _stringCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Assignment'),
        ),
        body: _stringCounter < _listOfString.length
            ? TextControl(
                list: _listOfString,
                count: _stringCounter,
                textHandler: _changeText)
            : DisplayText("Nothing Else to Show"),
      ),
    );
  }
}
