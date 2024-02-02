import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 104, 13, 154),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Learn Flutter the fun way!",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 244, 218, 255),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              style: ButtonStyle(elevation: MaterialStatePropertyAll(2)),
              onPressed: () {},
              child: Text(
                "Start Quiz",
                style: TextStyle(
                  color: Color.fromARGB(255, 244, 218, 255),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
