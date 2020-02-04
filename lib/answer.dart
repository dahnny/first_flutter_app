import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //This is used to save te function passed as a parameter from the main.dart file
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.answerText),
        onPressed: selectHandler,
      ),

    );
  }
}
