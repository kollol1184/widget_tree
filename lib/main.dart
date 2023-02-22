import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animarl?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Q U I Z'),
          ),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            Text(
              questions[1],
            ),
            Center(
              child: ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion,
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
