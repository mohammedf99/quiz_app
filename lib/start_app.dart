import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  const StartApp({
    super.key,
  });

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
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
          ),
          icon: const Icon(Icons.arrow_right_alt, color: Colors.white,),
          label: const Text(
            "Start Quiz",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
