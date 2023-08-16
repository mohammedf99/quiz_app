import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 200,
          color: const Color.fromARGB(100, 255, 255, 255),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: () => startQuiz(),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
          label: const Text(
            "Start Quiz",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
