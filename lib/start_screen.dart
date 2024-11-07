import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  // passing a function from Quiz class to this class
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            // transparency of the image is regulated here
            color: const Color.fromARGB(135, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          const Text(
            'Try This Quiz My Nigga',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
            ),
          ),
          const SizedBox(height: 25),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurpleAccent,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start the quiz!',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
