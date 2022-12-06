import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite meal?',
      'answers': [
        {'text': 'momo', 'score': 30},
        {'text': 'chowmein', 'score': 24},
        {'text': 'somosa', 'score': 32},
        {'text': 'hotdrinks', 'score': 25}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'rabbit', 'score': 30},
        {'text': 'elephant', 'score': 30},
        {'text': 'mice', 'score': 30},
        {'text': 'giraff', 'score': 30},
      ]
    },
    {
      'questionText': 'Who\'s your favorite?',
      'answers': [
        {'text': 'Sriram', 'score': 30},
        {'text': 'Sonu', 'score': 30},
        {'text': 'Anish', 'score': 30},
        {'text': 'Ansh', 'score': 60},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    //var aBool =True;
    //var aBool = False;
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have questions');
    } else {
      print('No more questions  left');
    }
  }

  @override
  Widget build(BuildContext context) {
    //difference between const and final
    // const dummy = ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // // dummy = []

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
