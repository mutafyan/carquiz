import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carquiz/data/questions.dart';
import 'package:carquiz/models/control_button.dart';
import 'package:carquiz/models/results/results.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({
    super.key,
    required this.selectedAnswers,
    required this.onRestart,
  });
  final List<String> selectedAnswers;
  final void Function() onRestart;
  List<Map<String, Object>> getResults() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "chosen_answer": selectedAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getResults();
    final numCorrectAnswer = summaryData.where((data) {
      return data['chosen_answer'] == data['correct_answer'];
    }).length;
    final numQuestions = questions.length;
    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You answered $numCorrectAnswer out of $numQuestions questions correctly!",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Results(summaryData),
              SizedBox(height: 30),
              ControlButton(
                  text: 'Restart the quiz!',
                  onPressed: onRestart,
                  icon: Icon(Icons.replay_sharp))
            ],
          )),
    );
  }
}
