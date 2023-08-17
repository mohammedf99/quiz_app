import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/quiz_question.dart';
import 'answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionIndex = 0;


  void answerQuestion() {

    setState(() => questionIndex++);

    if (questionIndex == questions.length - 1) {
      questionIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    
    final currentQuestion = questions[questionIndex];

    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(fontSize: 26, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffledAnswers().map(
            (answer) {
              return AnswerButton(answer: answer, onTap: answerQuestion);
            },
          ),
        ],
      ),
    );
  }
}
