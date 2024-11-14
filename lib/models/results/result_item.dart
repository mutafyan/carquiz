import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:quizapp_v2/models/results/result_card.dart";
import "package:quizapp_v2/models/results/result_index.dart";
import "package:quizapp_v2/models/results/answer_text.dart";

class ResultItem extends StatelessWidget {
  final int questionIndex;
  final String  question, chosenAnswer, correctAnswer;
  const ResultItem(this.questionIndex, this.question, this.chosenAnswer, this.correctAnswer, {super.key});
  @override
  Widget build(context) {
    final bool isCorrect = chosenAnswer == correctAnswer ? true : false;
    return ResultCard(
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Row(children: [
          ResultIndex(
              questionIndex: questionIndex,
              isCorrect: isCorrect,
          ),
          Expanded(child:
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(
                    question,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    )
                ),
                const SizedBox(height: 4),
                AnswerText(
                    isCorrect,
                    answer: correctAnswer,
                    isDefault: true
                ),
                AnswerText(
                    isCorrect,
                    answer: chosenAnswer,
                    isDefault: false,
                ),
              ]),
            ))
        ]),
      ),
    );
  }

}
