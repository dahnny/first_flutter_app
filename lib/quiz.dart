import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;


  Quiz(this.questions, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //This gets the individual items in the dicitonary and displays them
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() {
            answerQuestion(answer['score']);
          }, answer['text']);
        }).toList()
      ],
    );
  }
}
