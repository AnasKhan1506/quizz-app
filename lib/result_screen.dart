import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SizedBox(
      //   width: double.infinity,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You answered X out of Y questions correctly!"),
            const SizedBox(
              height: 30,
            ),
            const Text("List of answers and questions..."),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text("restart quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
