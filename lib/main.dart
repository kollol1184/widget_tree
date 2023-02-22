import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer 1 chosen');
  }

  void answerThree() {
    print('Answer 3 chosen');
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
          title: Center(child: Text('My First App')),
        ),
        body: Column(
          children: [
            Text(questions.last),
            Center(
              child: ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen!'),
              ),
            ),
            Center(
              child: ElevatedButton(
                  child: Text('Answer 3'),
                  onPressed: () {
                    print('Answer 3 Chosen!');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
