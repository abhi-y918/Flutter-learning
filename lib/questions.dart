import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:adv_basics/Answer_button.dart';
import 'package:adv_basics/data1/questions.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});//constructor function
  @override
  State<QuestionsScreen> createState() {
   return _QuestionsScreenState();
  }
}
class _QuestionsScreenState extends State<QuestionsScreen>{
  double get value => 0.0;

  @override
  Widget build( context) {
    final currentQuestion= questions[0];

   return SizedBox(
   width: double.infinity,
   child:Container(
        margin: const EdgeInsets.all(40),
     child :Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.stretch,
     children: [
      Text(
        currentQuestion.text,
       style: TextStyle(
         color: Colors.white,
       ),
        textAlign: TextAlign.center,
   ),
     const SizedBox(height: 30,),
    ...currentQuestion.answers.map((answer){//these dots are used for spreading values
      return AnswerButton(answerText: answer, onTap: (){});
    })
     ],
   ),
   ),
   );
  }
}