import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answer,
    required this.onTap,
  });
  final String answer;
  final void Function() onTap;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 6,
          padding: EdgeInsets.all(15),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        ),
        onPressed: onTap,
        child: Text(
          answer,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
