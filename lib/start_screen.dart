import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz; // Correct function type

  @override
  Widget build(BuildContext context) { // Corrected build method
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets1/quiz-logo.png", // Corrected asset path
            width: 200,
            color: const Color.fromARGB(255, 186, 158, 237),
          ),
          const SizedBox(height: 20),
           Text(
            "Learn Flutter the fun way",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz, // Ensure this is a valid function
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 243, 236, 236),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
