import 'package:flutter/material.dart';
import 'package:quizy/start_screen.dart';
import 'package:quizy/question_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState(){
  activeScreen = const StartScreen(switchScreen);
  super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = QuestionScreen();
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.deepPurple, Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const StartScreen(),
          ),
        ),
      ),
    );
  }
}
