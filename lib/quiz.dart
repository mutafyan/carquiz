import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quizapp_v2/questions_screen.dart';
import 'package:quizapp_v2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // changing starting screen to questions screen
  // when button is pressed
  // passing a pointer on the switchScreen() function
  // Widget? activeScreen; // ? - to allow it be null hence we init it later
  // /* initState function executes once, after the constructor,
  // // but before build(). Therefore it can be used for further
  // // initialization tasks */
  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  // OR WITHOUT initState, using ternary conditions
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurpleAccent,
                Colors.deepPurple,
                // Color.fromARGB(255, 95, 9, 126),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: whatScreen(activeScreen),

          //activeScreen == 'start-screen' // condition
          //     ? StartScreen(switchScreen) // if true
          //     : const QuestionScreen(), // else -> false
        ),
      ),
    );
  }

  Widget? whatScreen(screen) {
    if (activeScreen == 'start-screen') {
      return StartScreen(switchScreen);
    } else if (activeScreen == 'questions-screen') {
      return const QuestionScreen();
    } else {
      // null
      log('activeScreen exception, NULL');
      return StartScreen(switchScreen);
    }
  }
}
