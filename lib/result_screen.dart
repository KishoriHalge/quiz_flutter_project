import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model/data_class_quiz.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.restartQuiz,
    required this.chosenanswer,
  });

  final void Function() restartQuiz;
  final List<String> chosenanswer;

  List<Map<String, Object>> getResultData() {
    List<Map<String, Object>> summaryData = [];
    for (int i = 0; i < chosenanswer.length; i++) {
      summaryData.add({
        'Question-Index': i,
        'Question': dataList[i].question,
        'Correct-Answer': dataList[i].answers[0],
        'User-Answer': chosenanswer[i],
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> result = getResultData();
    int totalQuestions = dataList.length;
    int correctAnswers = result.where((item) {
      return item['Correct-Answer'] == item['User-Answer'];
    }).length;
    return  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'You have answered questions $correctAnswers correctly out $totalQuestions of questions',
            style: GoogleFonts.lato(fontSize: 20),
          ),
          SizedBox(height: 20),
      
          ...result.map((item) {
            return     SingleChildScrollView(
              child:  Column(

                            children: [
                            //  Divider(),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                        CircleAvatar(
                          maxRadius: 15,
                        backgroundColor:item['Correct-Answer']==item['User-Answer']?Colors.green:Colors.red,
                            child: Text(
                            ((item['Question-Index'] as int) + 1).toString(),

                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                        child:  SingleChildScrollView(
                          child: Column(
                                    mainAxisAlignment:MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 SizedBox(height: 10,),
                              Text(item['Question'] as String, style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                                         // SizedBox(height: 10,),
                              Text(
                              item['Correct-Answer'] as String,
                              style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                          
                              ),
                              ),
                               // SizedBox(height: 10,),
                              Text(item['User-Answer'] as String,
                          
                                style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          
                              ],
                              ),
                        )
                          ,

                        ),
                        ]
                        ,
                        )
                        ,
                        ]
                        ,
                        ),

            );

          }),
          TextButton.icon(
icon: Icon(Icons.refresh),
              style: TextButton.styleFrom(

                 padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                foregroundColor: Colors.white,
              //   backgroundColor: Colors.blue,
              ),
              onPressed: restartQuiz, label: Text('Restart Quiz')),
        ],
      );
  }
}
