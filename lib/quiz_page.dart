import 'package:flutter/material.dart';
// import 'package:gradient_app_bar/gradient_app_bar.dart';
// import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
//import 'package:flutter_first/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(QuizPage());

class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<QuizPage> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What is the name of Polnareffs Stand?',
      'answers': [
        {'text': 'France\'s Finest', 'score': 0}, //jotaro
        {'text': 'Baguette Mc Fancy', 'score': 0}, //Advol
        {'text': 'Silver Skillet', 'score': 0}, //Kiekoween
        {'text': 'Silver Chariot', 'score': 1}, //Joseph
        {'text': 'Star hermit Red', 'score': 0} //Pol
      ]
    },
    {
      'questionText': 'What is jotaro\'s Famous Quote?',
      'answers': [
        {'text': 'Good Job', 'score': 0}, //Pol
        {'text': 'Good', 'score': 0}, //Jotaro
        {'text': 'Great Googly Moogly', 'score': 0}, //Kok
        {'text': 'Good Grief', 'score': 1}, //advol
        {'text': 'God Damn', 'score': 0} //Josep
      ]
    },
    {
      'questionText': 'How old is joseph Joestar in Stardust Crusaders?',
      'answers': [
        {'text': '18', 'score': 0}, //josep
        {'text': '54', 'score': 0}, //jota
        {'text': '79', 'score': 0}, //kok
        {'text': '48', 'score': 0}, //advol
        {'text': '69', 'score': 1} //pol
      ]
    },
    {
      'questionText': 'Where is Advol From?',
      'answers': [
        {'text': 'Cairo', 'score': 1}, //jota
        {'text': 'Adana', 'score': 0}, //kak
        {'text': 'Libya', 'score': 0}, //advol
        {'text': 'Istanbul', 'score': 0}, //pol
        {'text': 'Yemen', 'score': 0} //josep
      ]
    },
    {
      'questionText': 'Who is the Tallest of the protagonists?',
      'answers': [
        {'text': 'Jotaro', 'score': 1}, //pol
        {'text': 'Advol', 'score': 0}, //jotar
        {'text': 'Polnareff', 'score': 0}, //advol
        {'text': 'Kakyoween', 'score': 0}, //josep
        {'text': 'Joseph', 'score': 1} //kak
      ]
    },
    {
      'questionText': 'How Many Stands did the Joestar crew defeat?',
      'answers': [
        {'text': '10', 'score': 0}, //pol
        {'text': '21', 'score': 0}, //josep
        {'text': '13', 'score': 0}, //jotar
        {'text': '15', 'score': 0}, //kak
        {'text': '26', 'score': 1} //advol
      ]
    },
    {
      'questionText': 'Who killed the most characters in Stardust Crusaders?',
      'answers': [
        {'text': 'Dio Brando', 'score': 0}, //josep
        {'text': 'Iggy', 'score': 0}, //advol
        {'text': 'Vanilla Ice', 'score': 1}, //kak
        {'text': 'Jotaro', 'score': 0}, //pol
        {'text': 'Polnareff', 'score': 0} //jota
      ]
    },
    {
      'questionText': 'How many days was the crews journey?',
      'answers': [
        {'text': '50', 'score': 1}, //josep
        {'text': '30', 'score': 0}, //advol
        {'text': '150', 'score': 0}, //kak
        {'text': '21', 'score': 0}, //pol
        {'text': '14', 'score': 0} //jota
      ]
    },
    {
      'questionText': 'Who was the one stand user we never got to see?',
      'answers': [
        {'text': 'Death Thirteen', 'score': 0}, //josep
        {'text': 'Midler', 'score': 1}, //advol
        {'text': 'Forever', 'score': 1}, //kak
        {'text': 'N\'Doul', 'score': 0}, //pol
        {'text': 'Pet Shop', 'score': 0} //jota
      ]
    },
    {
      'questionText': 'What was Iggy\'s favorite treat?',
      'answers': [
        {'text': 'Regular Gum', 'score': 0}, //josep
        {'text': 'Jotaro\'s Hat', 'score': 0}, //advol
        {'text': 'Ice Cream', 'score': 0}, //kak
        {'text': 'Dog Food', 'score': 0}, //pol
        {'text': 'Coffee Flavored Gum', 'score': 1} //jota
      ]
    },
    {
      'questionText': 'What fruit ended up being the demise of Oingo?',
      'answers': [
        {'text': 'An Apple', 'score': 0}, //josep
        {'text': 'An Orange', 'score': 1}, //advol
        {'text': 'A Banana', 'score': 0}, //kak
        {'text': 'A Kiwi', 'score': 0}, //pol
        {'text': 'Trick question it was a vegetable', 'score': 0} //jota
      ]
    },
    {
      'questionText': 'Where did the final fight with Dio take place?',
      'answers': [
        {'text': 'France', 'score': 0}, //josep
        {'text': 'Greece', 'score': 0}, //advol
        {'text': 'England', 'score': 1}, //kak
        {'text': 'Istanbul', 'score': 0}, //pol
        {'text': 'Cairo', 'score': 1} //jota
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('_questionIndex:$_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
              width: 110,
              child: Image.asset('assets/jojo_text-removebg-preview.png')),
        ],
        // gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: <Color>[Colors.blue[500], Colors.black54, Colors.red[600]]),
        title: Text('Quiz App'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/backgrounds/cast background.jpg',
                ),
                fit: BoxFit.fill)),
        child: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    ));
  }
}
