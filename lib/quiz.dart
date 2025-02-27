import 'package:adv_basics/questions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions.dart';
import 'package:adv_basics/questions_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    //   // TODO: implement createState
    //   throw UnimplementedError();
    // }
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  var activeScreen='start-screen';//it can also be like as widget for variables
  //alternative approach for next question screen
  // @override
  // void initState()
  // {
  //   //todo:implement initstate
  //   // setState(() {
  //   //
  //   // });
  //   activeScreen=StartScreen(switchScreen);
  //   super.initState();
  // }
  void  switchScreen(){
    setState(() {
      activeScreen =  'questions-screen';

    });
  }

  @override
  Widget build (context){
    Widget  screenWidget =StartScreen(switchScreen);

    if(activeScreen=='questions-screen'){
      screenWidget=QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255,78,13,151),
                  Color.fromARGB(255, 131, 51, 184)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget,
      ),
    )
    );
  }
}