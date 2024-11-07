import 'package:quizapp_v2/models/quiz_question.dart';

// Internally the 1st answer will always be the
// right one, but user will be shown shuffled variant
// so that the quiz is not predictible
const questions = [
  // 1
  QuizQuestion(
    'What does ABS stand for in a car?',
    [
      'Anti-lock Braking System',
      'Auto Brake System',
      'Anti-Bounce Suspension',
      'Acceleration Boost System',
    ],
  ),
  // 2
  QuizQuestion(
    'In the automotive world, what does SUV stand for?',
    [
      'Sports Utility Vehicle',
      'Sports Undercarriage Vehicle',
      'Super Urban Van',
      'Speedy Urban Voyage',
    ],
  ),
  // 3
  QuizQuestion(
    'Which car company produces the Mustang model?',
    [
      'Ford',
      'Chevrolet',
      'Honda',
      'Toyota',
    ],
  ),
  // 4
  QuizQuestion(
    'What is the purpose of the catalytic converter in a car?',
    [
      'Reduce harmful emissions',
      'Enhance Fuel Efficiency',
      'Reduce Air Resistance',
      'Convert Sunlight into Energy',
    ],
  ),
  // 5
  QuizQuestion(
    "What does RPM stand for in a car's engine?",
    [
      'Rotations Per Minute',
      'Revolutions Per Mile',
      'Road Performance Meter',
      'Rear Power Module',
    ],
  ),
];
/*
  // 6
  QuizQuestion(
    'In the automotive world, what does SUV stand for?',
    [
      'Sports Utility Vehicle',
      'Sports Undercarriage Vehicle',
      'Super Urban Van',
      'Speedy Urban Voyage',
    ],
  ),
  // 7
  QuizQuestion(
    'In the automotive world, what does SUV stand for?',
    [
      'Sports Utility Vehicle',
      'Sports Undercarriage Vehicle',
      'Super Urban Van',
      'Speedy Urban Voyage',
    ],
  ), */

