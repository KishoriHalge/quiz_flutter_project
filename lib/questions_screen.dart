import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_flutter_project/answer_button.dart';
import 'package:quiz_flutter_project/model/data_class_quiz.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.chosenAnswer});

  final void Function(String chosenAnswers) chosenAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentIndex = 0;

  void answerQuestion(String answer) {
    widget.chosenAnswer(answer);
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = dataList[currentIndex];
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentQuestion.question,
            style: GoogleFonts.lato(fontSize: 24, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          ...currentQuestion.getSuffledAnswers().map((answer) {
            return AnswerButton(
              answer: answer,
              onTap: () {
                answerQuestion(answer);
              },
            );
          }),
        ],
      ),
    );
  }
}
