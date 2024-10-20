import 'package:flutter/material.dart';
import 'package:project_quiz/quiz.dart';
import 'package:project_quiz/result.dart';

void main() {
  runApp(QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;
  var _weightTotal = 0;

  final _questions = const [
    {
      "text": "What is your favorite color?",
      "answers": [
        { "text": "Black", "weight": 10 },
        { "text": "Red", "weight": 4 },
        { "text": "Green", "weight": 7 },
        { "text": "White", "weight": 8 }
      ]
    },
    {
      "text": "What is your favorite animal?",
      "answers": [
        { "text": "Rabbit", "weight": 9 },
        { "text": "Snake", "weight": 10 },
        { "text": "Elephant", "weight": 7 },
        { "text": "Lion", "weight": 3 }
      ]
    },
    {
      "text": "What is your favorite city?",
      "answers": [
        { "text": "Rio de Janeiro", "weight": 3 },
        { "text": "New York", "weight": 6 },
        { "text": "Miami", "weight": 10 },
        { "text": "Toronto", "weight": 6 }
      ]
    }
  ];

  void _answerAction(int weightAnswer) {
    setState(() {
      _selectedQuestion++;
      _weightTotal += weightAnswer;
    });
  }

  bool get hasSelectedQuestion{
    return _selectedQuestion < _questions.length;
  }

  void _resetQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _weightTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz", style: TextStyle(fontSize: 28),),
          backgroundColor: Colors.grey,
          foregroundColor: Colors.white,
        ),
        body: hasSelectedQuestion 
        ? Quiz(
          selectedQuestion: _selectedQuestion, 
          questions: _questions, 
          answerAction: _answerAction)  
        : Result(_weightTotal, _resetQuiz)
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }  
}