import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample/widgets/answer_button.dart';

import '../data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentIndex = 0;
  List<String> selectedAnswers = [];

  void moveNext(String answer) {
    chooseAnswer(answer);
    setState(() {
      if (selectedAnswers.length < questions.length) {
        currentIndex++;
      }
    });
    if (selectedAnswers.length == questions.length) {
      context.goNamed("result_screen", extra: selectedAnswers);
      selectedAnswers = [];
    }
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];

    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledList().map((answer) {
              return AnswerButton(answerText: answer, onTap: moveNext);
            })
          ],
        ),
      ),
    ));
  }
}
