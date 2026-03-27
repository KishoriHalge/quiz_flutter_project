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
  var activeScreen='Start-Screen';
  var selectedAnwer=[];
  void switchScreen(){
setState(() {
  activeScreen='Questions-Screen';
});

  }
void chosenAnswer(String chosenAnwers){
    selectedAnwer.add(chosenAnwers);
    if(selectedAnwer.length==dataList.length){

      setState(() {
        activeScreen='Result-Screen';
      });
    }

}

  @override
  Widget build(BuildContext context) {

    Widget currentScreen=StartScreen(startQuiz: switchScreen,);

    if(activeScreen=='Questions-Screen'){

      currentScreen=QuestionsScreen(chosenAnswer: chosenAnswer,);


    }
    if(activeScreen=='Result-Screen'){
      currentScreen=ResultScreen();
    }

    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft
              ),
            ),

            child: Center(child: currentScreen),
          ),

      ),
    );
  }
}
