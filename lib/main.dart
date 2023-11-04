import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';

void main() {
  runApp(
    const MaterialApp(
      home: QuizScreen(),
    ),
  );
}

//boilerplate => basmakalıp
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/quiz.png",
            width: 240,
          ),
          const Text(
            "Quiz App",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 16),
            ),
            child: const Text("Oyuna Başla"),
          ),
        ]),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int questionNumber = 0;
  void changeQuestion() {
    setState(() {
      if (questionNumber >= questions.length - 1) {
        questionNumber = 0;
      } else {
        questionNumber++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
        "Workshop Flutter Quiz Soruları",
      ))),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questions[questionNumber].question,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            ...questions[questionNumber].answers.map((answer) {
              return ElevatedButton(
                  onPressed: () {
                    changeQuestion();
                  },
                  child: Text(answer));
            })
          ],
        ),
      ),
    );
  }
}
