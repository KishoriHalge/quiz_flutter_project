class QuizDataMaodelClass {

  QuizDataMaodelClass({required this.answers,required this.question});
  final String question;
  List<String> answers;

  List<String> getSuffledAnswers(){
    List<String> shuffledanswers=List.of(answers);

    shuffledanswers.shuffle();
    return shuffledanswers;
  }
}