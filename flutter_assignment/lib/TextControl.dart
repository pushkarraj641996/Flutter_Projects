import 'package:flutter/material.dart';

import './displayText.dart';

class TextControl extends StatelessWidget {
  final List<String> list;
  final int count;
  final Function textHandler;

  TextControl(
      {@required this.list, @required this.count, @required this.textHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DisplayText(list[count]),
        RaisedButton(
          color: Colors.blue,
          child: Text('Change Text'),
          onPressed: textHandler,
        ),
      ],
    );
  }
}
