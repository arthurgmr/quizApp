import 'package:flutter/material.dart';
import 'package:project_quiz/answer.dart';
import 'package:project_quiz/question.dart';

class Quiz extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final void Function(int) answerAction;

  Quiz({
    required this.selectedQuestion,
    required this.questions,
    required this.answerAction
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = questions[selectedQuestion]['answers'] as List<Map<String, Object>>;

    return Column(
      children: [
        Question(questions.elementAt(selectedQuestion)['text'].toString()),
        ...answers.map((answer) {
          return AnswerButton(
            answer["text"].toString(),
            () => answerAction(answer["weight"] as int),
          );
        }).toList(),
      ],
    );
  }
}