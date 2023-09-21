import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    var chosenAns = chosenAnswers.length.toString();
    var questionLength = questions.length.toString();
    var text =
        "You answered $chosenAns out of  $questionLength questions correctly!";
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
              children: [
                Text(text),
                const SizedBox(
                  height: 30,
                ),
                const Text("List of questions and answers"),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      context.go('/');
                    },
                    child: const Text("Restart Quiz"))
              ],
            ))));
  }
}
