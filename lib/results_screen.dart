import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'You have completed the quiz!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("list of answers"),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: () => {},
            icon: const Icon(Icons.restart_alt),
            label: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
