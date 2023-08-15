import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  const StartApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 63, 34, 111),
            Color.fromARGB(255, 118, 65, 203),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 200,
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
          OutlinedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
