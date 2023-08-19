import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    TextStyle questionStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    TextStyle answerStyle = const TextStyle(
      fontSize: 14,
      color: Colors.white,
    );

    bool isCorrectAnswer(Map<String, Object> data) {
      return data['correct_answer'] == data['selected_answer'];
    }

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isCorrectAnswer(data) ? Colors.blue : Colors.pink,
                  ),
                  child: Text(
                    data['question_index'].toString(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: questionStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: answerStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data['selected_answer'] as String,
                        style: TextStyle(
                          color:
                              isCorrectAnswer(data) ? Colors.blue : Colors.pink,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
