import 'package:carquiz/models/quiz_question.dart';

// Internally the 1st answer will always be the
// right one, but user will be shown shuffled variant
// so that the quiz is not predictable
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
  // 6
  QuizQuestion(
    'What does ECU stand for in automotive engineering?',
    [
      'Engine Control Unit',
      'Electronic Circuit Utilizer',
      'Engine Calibration Utility',
      'Electric Control Usage',
    ],
  ),
  // 7
  QuizQuestion(
    'What is the primary function of a differential in a car?',
    [
      'Allow wheels to rotate at different speeds',
      'Increase engine torque output',
      'Control fuel injection timing',
      'Reduce engine vibrations',
    ],
  ),
  // 8
  QuizQuestion(
    'What is the primary function of a turbocharger in a car engine?',
    [
      'Increase engine power by forcing more air into the combustion chamber',
      'Reduce fuel consumption by optimizing air-fuel mixture',
      'Control exhaust noise levels',
      'Monitor engine temperature',
    ],
  ),
  // 9
  QuizQuestion(
    'What is the purpose of a limited-slip differential (LSD)?',
    [
      'Improve traction by limiting wheel spin',
      'Reduce fuel consumption',
      'Control exhaust emissions',
      'Enhance braking efficiency',
    ],
  ),
  // 10
  QuizQuestion(
    'What does VTEC stand for in Honda engines?',
    [
      'Variable Valve Timing and Lift Electronic Control',
      'Variable Turbocharged Engine Control',
      'Voltage Timing Efficiency Calibration',
      'Variable Torque and Emission Control',
    ],
  ),
];
