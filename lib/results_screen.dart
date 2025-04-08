import 'package:flutter/material.dart';
import 'package:adv_basics/data1/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    ;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(
        'You answered $numCorrectQuestions out of $numTotalQuestions correctly!',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        QuestionsSummary(getSummaryData()),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            // Add your restart logic here
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            // Keeps the button as compact as possible
            children: [
              Icon(Icons.arrow_right_alt, color: Colors.white),
              SizedBox(width: 8), // spacing between icon and text
              Text(
                'Restart Quiz!',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
      ),
      ],
    ),
    )
    ,
    );
  }
}
