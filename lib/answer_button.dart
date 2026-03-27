import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onTap});

  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(answer),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
