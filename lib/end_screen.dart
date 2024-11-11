import 'package:flutter/material.dart';
import 'package:quizapp_v2/data/questions.dart';
import 'package:quizapp_v2/data/result_item.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({super.key, required this.selectedAnswers});
  final List<String> selectedAnswers;

  List<Map<String, Object>> getResults() {
    List<Map<String, Object>> summary = [];

    for(var i = 0; i < selectedAnswers.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question" : questions[i].text,
          "correct_answer" : questions[i].answers[0],
          "chosen_answer": selectedAnswers[i]
        }
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered X out of Y questions correctly!"),
            SizedBox(height: 30),
            ResultItem(getResults()),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){},
              child: Text("Restart quiz!"),
            )
        ],
        )
      ),
    );
  }
}