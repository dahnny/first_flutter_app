import 'package:flutter/material.dart';
import 'package:list/result.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;


  void _reset(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'What\'s your favorite color',
        'answers': [
          {'text': 'Red', 'score': 10},
          {'text': 'Black', 'score': 3},
          {'text': 'White', 'score': 1},
          {'text': 'Pink', 'score': 1}
        ]
      },
      {
        'questionText': 'What\'s your favorite animal',
        'answers': [
          {'text': 'Lion', 'score': 10},
          {'text': 'Elephant', 'score': 3},
          {'text': 'Chicken', 'score': 1},
          {'text': 'Goat', 'score': 1}
        ]
      },
      {
        'questionText': 'What\'s your favorite food',
        'answers': [
          {'text': 'Rice', 'score': 10},
          {'text': 'Beans', 'score': 3},
          {'text': 'Yam', 'score': 1},
          {'text': 'Goat', 'score': 1}
        ]
      }
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(_questions, _questionIndex, _answerQuestion)
          : Result(_totalScore, _reset ),
    ));
  }
}
