import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.startQuiz});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Flutter Quiz',
          style: GoogleFonts.lato(fontSize: 30, color: Colors.white),
        ),
        SizedBox(height: 30),
        Image.asset('assets/images/quiz.png', width: 200),
        SizedBox(height: 50),
        OutlinedButton.icon(
          icon: Icon(Icons.arrow_forward),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10)
          ),

          onPressed: startQuiz,
          label: Text('Start Quiz', style: TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
