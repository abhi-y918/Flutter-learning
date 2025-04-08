import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(((data['question_index'] as int) + 1).toString(),
                  style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,

                  ),
                  ),
                  const SizedBox(width: 10),
                  //typecasting by using 'as'
                  Expanded(
                    child: Column(
                      children: [
                        Text(data['question'] as String,
                          style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 5,

                        ),
                        Text(data['user_answer'] as String,
                         style: GoogleFonts.lato(
                         color: Colors.yellow,
                         fontSize: 13,
                        ),
              ),
                        Text(data['correct_answer'] as String,
                          style: GoogleFonts.lato(
                          color: Colors.red,
                          fontSize: 13,
              ),
                         ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    ); //children wants list of widget not list of maps
  }
}
