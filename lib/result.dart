import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resultHandler;

  Result(this.resultScore, this.resultHandler);

  String get resultPhrase {
    //getter combination of property and methods
    String resultText;
    if (resultScore <= 90) {
      resultText = 'you are really awesome';
    } else if (resultScore <= 100) {
      resultText = 'you are mindblowing';
    } else {
      resultText = 'you are really awful';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: Text('Restart Quiz', style: TextStyle(fontSize: 25)),
          onPressed: resultHandler,
        ),
      ],
    ));
  }
}
