import 'package:flutter/material.dart';
import 'package:quizapp_v2/models/answer_button.dart';
import 'package:quizapp_v2/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp_v2/end_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currQuestionIndex = 0;
  void answerQuestion() {
    setState(() {
      currQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    // exiting from quiz when all questions are answered
    if(currQuestionIndex == questions.length) {
      setState(() {
        const EndScreen();
      });
      return const EndScreen();
    }
    final currentQuestion = questions[currQuestionIndex];
    return SizedBox(
      width: double.infinity, // as wide as possible
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 224, 149, 237),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            /* map returns a new list containing a new object for
            / each item of the initial list (but does not change it) */
            // the '...' converts the list (which would be nested here(not wanted))
            // into comma-seperated multiple individial values
            // like it should be
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answer: answer, onTap: answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
