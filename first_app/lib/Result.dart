import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _finalScore;
  final Function _restart;

  Result(this._finalScore, this._restart);

  String get result {
    return 'Quiz Ended !!! \n Score = ' + _finalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            result,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: _restart,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
