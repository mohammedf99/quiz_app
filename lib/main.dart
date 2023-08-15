import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {

  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Image.asset("assets/images/quiz-logo.png"),
          ],
        ),
      ),
    );
  }
}