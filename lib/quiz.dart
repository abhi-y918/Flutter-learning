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
  Widget? activeScreen;//it can also be like as widget for variables
  @override
  void initState()
  {
    //todo:implement initstate
    // setState(() {
    //
    // });
    activeScreen=StartScreen(switchScreen);
    super.initState();
  }
  void  switchScreen(){
    setState(() {
      activeScreen =  const QuestionsScreen();

    });
  }

  @override
  Widget build (context){
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
            child: activeScreen,
      ),
    )
    );
  }
}