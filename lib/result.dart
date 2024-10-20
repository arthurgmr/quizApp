import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Result extends StatelessWidget {

  final int weightTotal;
  final void Function() onResetQuiz;

  Result(this.weightTotal, this.onResetQuiz);

  String get resultPhrase{
    if (weightTotal <= 10) {
      return "Congratulations!";
    } else if (weightTotal <= 17) {
      return "You are good!";
    } else if (weightTotal <= 24) {
      return "You are amazing!";
    } else {
      return "Jedi Level!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Lottie.asset(
            'assets/lottie/congrats.json',
            width: 200,
            height: 200,
            repeat: true,
          ),
          ElevatedButton(
            onPressed: onResetQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              foregroundColor: Colors.white
            ),
            child: const Text("Try again!"),
          ),
          const SizedBox(height: 20),
          
        ],
      ),
    );
  }
}