import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 176, 94, 39),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          textStyle: const TextStyle(
              color: Color.fromARGB(255, 221, 5, 5),
              fontSize: 25,
              fontStyle: FontStyle.normal),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
      ),
    );
  }
}
