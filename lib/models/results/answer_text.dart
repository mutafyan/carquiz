import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class AnswerText extends StatelessWidget {
  const AnswerText( this.isCorrect, {super.key, required this.answer,required this.isDefault});
  final String answer;
  final bool isDefault;
  final bool isCorrect;
  @override
  Widget build(context) {
    return Text(
      answer,
      style: GoogleFonts.lato(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: isDefault ? Colors.white70 : (isCorrect ? Colors.green : Colors.redAccent)
      )
    );
  }
}