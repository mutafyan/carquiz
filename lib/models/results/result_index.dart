import "package:flutter/material.dart";

class ResultIndex extends StatelessWidget {
  const ResultIndex({super.key, required this.questionIndex, required this.isCorrect});
  final bool isCorrect;
  final int questionIndex;
  @override
  Widget build(context) {
    return Container(
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
    );
  }
}