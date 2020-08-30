import 'package:flutter/material.dart';

import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  var _questionNo = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'question': 'What\'s your Favourite Colour ?',
      'answer': [
        {'text': 'Blue', 'score': 7},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 1}
      ],
    },
    {
      'question': 'What\'s your Favourite Animal ?',
      'answer': [
        {'text': 'Lion', 'score': 9},
        {'text': 'Tiger', 'score': 7},
        {'text': 'Elephant', 'score': 1},
        {'text': 'Leopard', 'score': 5}
      ],
    },
    {
      'question': 'What\'s your Favourite Programming Language ?',
      'answer': [
        {'text': 'Dart', 'score': 3},
        {'text': 'Java', 'score': 5},
        {'text': 'C++', 'score': 1},
        {'text': 'Python', 'score': 9}
      ],
    },
  ];

  void _answerQuestion(int score) {
     _totalScore += score;
    setState(() {
      _questionNo += 1;
    });
  }

  void _resetQuiz(){
    setState(() {
      _questionNo = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My FirstApp'),
        ),
        body: _questionNo < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionNo: _questionNo,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
