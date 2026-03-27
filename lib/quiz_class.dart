import 'package:flutter/material.dart';
import 'package:quiz_flutter_project/questions_screen.dart';
import 'package:quiz_flutter_project/start_screen.dart';

class QuizClass extends StatefulWidget {
  @override
  State<QuizClass> createState() => _QuizClassState();
}




class _QuizClassState extends State<QuizClass> {
  var activeScreen='Start-Screen';
  void switchScreen(){
setState(() {
  activeScreen='Questions-Screen';
});

  }


  @override
  Widget build(BuildContext context) {

    Widget currentScreen=StartScreen(startQuiz: switchScreen,);

    if(activeScreen=='Questions-Screen'){

      currentScreen=QuestionsScreen();


    }

    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
