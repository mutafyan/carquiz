import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quizapp_v2/end_screen.dart';
import 'package:quizapp_v2/questions_screen.dart';
import 'package:quizapp_v2/start_screen.dart';
import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  String activeScreen = 'start-screen';

  void startQuiz() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void saveAnswer(String answer) {
    selectedAnswers.add(answer);
    log("Picked answer: $answer");

    // Move to end screen if all questions are answered
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'end-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget;

    if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(onStart: startQuiz);
    } else if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: saveAnswer);
    } else {
      // Placeholder for end screen (you can implement a proper end screen here)
      screenWidget = EndScreen(selectedAnswers: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurpleAccent,
                Colors.deepPurple,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
