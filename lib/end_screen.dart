import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';
import 'package:quizapp_v2/start_screen.dart';
import 'package:quizapp_v2/quiz.dart';

class EndScreen extends StatefulWidget {
  const EndScreen({super.key});
}

class _EndScreen extends State<EndScreen> {
  Quiz restart = const Quiz();
  @override
  Widget build(context) {
    return Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('The End.'),
              ElevatedButton(onPressed: (){
                printToConsole("line");
              },
                  // setState(StartScreen(setState(() {
                  //
                  // });))
                  child: const Text('restart')),])
    );
  }
}
