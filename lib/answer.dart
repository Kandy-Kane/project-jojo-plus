import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.red[700],
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
