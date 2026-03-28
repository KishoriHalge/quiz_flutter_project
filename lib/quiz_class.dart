import 'package:flutter/material.dart';
import 'package:quiz_flutter_project/model/data_class_quiz.dart';
import 'package:quiz_flutter_project/questions_screen.dart';
import 'package:quiz_flutter_project/result_screen.dart';
import 'package:quiz_flutter_project/start_screen.dart';

class QuizClass extends StatefulWidget {
  @override
  State<QuizClass> createState() => _QuizClassState();
}

class _QuizClassState extends State<QuizClass> {
  var activeScreen = 'Start-Screen';
  List<String> selectedAnwer = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'Questions-Screen';
    });
  }

  void chosenAnswer(String chosenAnwer) {
    selectedAnwer.add(chosenAnwer);
    if (selectedAnwer.length == dataList.length) {
      setState(() {
        activeScreen = 'Result-Screen';
      });
    }
  }

  void restartQuiz() {
    selectedAnwer = [];
    setState(() {
      activeScreen = 'Start-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(startQuiz: switchScreen);

    if (activeScreen == 'Questions-Screen') {
      currentScreen = QuestionsScreen(chosenAnswer: chosenAnswer);
    }
    if (activeScreen == 'Result-Screen') {
      currentScreen = ResultScreen(
        restartQuiz: restartQuiz,
        chosenanswer: selectedAnwer,
      );
    }

    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.blueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child: Center(child: currentScreen),
        ),
      ),
    );
  }
}
