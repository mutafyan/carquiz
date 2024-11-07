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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 63, 4, 119),
        foregroundColor: Colors.white,
        // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      ),
      onPressed: onTap,
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}