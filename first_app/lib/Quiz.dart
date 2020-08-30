import 'package:flutter/material.dart';

import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionNo;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionNo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionNo]['question']),
        ...(questions[questionNo]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
