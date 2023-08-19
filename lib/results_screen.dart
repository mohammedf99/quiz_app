import 'package:flutter/material.dart';

import 'models/quiz_question.dart';
import 'questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers, required this.onTap});
 
  final List<String> selectedAnswers;
  final void Function() onTap;

  List<Map<String, Object>> getSummaryData() {
    final summaryData = <Map<String, Object>>[];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summaryData.add({
        'question_index': i + 1,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'selected_answer': selectedAnswers[i],
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {

    final summaryData = getSummaryData();
    final int totalQuestions = questions.length;
    final int totalCorrectAnswers = summaryData.where((data) {
      return data['correct_answer'] == data['selected_answer'];
    }).length;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $totalCorrectAnswers of $totalQuestions questions correctly.',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: onTap,
            icon: const Icon(Icons.restart_alt),
            label: const Text(
              'Restart Quiz',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              iconColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
