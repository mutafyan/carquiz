import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ResultItem extends StatelessWidget {
  final int questionIndex;
  final String  question, chosenAnswer, correctAnswer;
  const ResultItem(this.questionIndex, this.question, this.chosenAnswer, this.correctAnswer, {super.key});
  @override
  Widget build(context) {
    final bool isCorrect = chosenAnswer == correctAnswer ? true : false;
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      color: Colors.deepPurple,
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Row(children: [
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isCorrect ? Colors.green : Colors.red
            ),
            child: Text(
              (questionIndex + 1).toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),
            ),
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
                const SizedBox(height: 5,),
                Text(
                    chosenAnswer,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.white
                    )
                ),
                Text(
                    correctAnswer,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.green,
                    )
                ),
              ]),
            ))
        ]),
      ),
    );
  }

}
