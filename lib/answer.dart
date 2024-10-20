import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;

  final void Function() onPressed;

  const AnswerButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          foregroundColor: Colors.white
        ),
      ),
    );
  }
}