
import 'package:quiz_flutter_project/model/data_class_quiz.dart';

import 'model_class.dart';


List<QuizDataMaodelClass> dataList = [
  QuizDataMaodelClass(
    question: 'What are the main building blocks of Flutter UIs?', answers:
  [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ],),

  QuizDataMaodelClass(question: 'How are Flutter UIs built?',answers:  [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',]),
  QuizDataMaodelClass(question:  'What\'s the purpose of a StatefulWidget?',answers:
  [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
  ],),


  QuizDataMaodelClass(question:   'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answers:   [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],),
  QuizDataMaodelClass(question:  'What happens if you change data in a StatelessWidget?',
    answers:  [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],),
  QuizDataMaodelClass(question: 'How should you update data inside of StatefulWidgets?',
    answers:  [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],),








];