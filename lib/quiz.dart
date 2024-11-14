import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:carquiz/screens/end_screen.dart';
import 'package:carquiz/screens/questions_screen.dart';
import 'package:carquiz/screens/start_screen.dart';
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
      selectedAnswers.clear();
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
      screenWidget = EndScreen(selectedAnswers: selectedAnswers, onRestart: restartQuiz);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Quiz',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Set default background color
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.purpleAccent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
