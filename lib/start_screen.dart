import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key,required this.startQuiz});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

      Text('Flutter Quiz'),
      Image.asset('assets/images/quiz.png'),
      OutlinedButton(onPressed: startQuiz, child: Text('Start Quiz')),
    ],);
  }
}
