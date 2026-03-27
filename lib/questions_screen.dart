
import 'package:flutter/material.dart';
import 'package:quiz_flutter_project/answer_button.dart';
import 'package:quiz_flutter_project/model/data_class_quiz.dart';
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
int currentIndex=0;

void answerQuestion(String answer){

setState(() {
  currentIndex++;
});
}
  @override
  Widget build(BuildContext context) {
    var currentQuestion=dataList[currentIndex];
    return Column(

      mainAxisSize: MainAxisSize.min,
      children: [

      Text(currentQuestion.question),
        ...currentQuestion.getSuffledAnswers().map((answer){

          return AnswerButton(answer: answer, onTap: (){});
        })

    ],);
  }
}
