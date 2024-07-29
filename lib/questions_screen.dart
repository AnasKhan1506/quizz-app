import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/answer_button.dart';
import 'package:quizzapp/data/questions.dart';
import 'package:quizzapp/result_screen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => ResultScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 220, 162, 230),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () => answerQuestion(answer),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:quizzapp/answer_button.dart';
// import 'package:quizzapp/data/questions.dart';

// class QuestionsScreen extends StatefulWidget {
//   const QuestionsScreen({super.key, required this.onSelectAnswer});
//   final void Function(String answer) onSelectAnswer;

//   @override
//   State<QuestionsScreen> createState() => _QuestionsScreenState();
// }

// class _QuestionsScreenState extends State<QuestionsScreen> {
//   var currentQuestionIndex = 0;
//   void answerQuestion(String selectedAnswer) {
//     widget.onSelectAnswer(selectedAnswer);
//     // currentIndex = currentIndex + 1;
//     // currentIndex += 1;
//     setState(() {
//       currentQuestionIndex++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final currentQuestion = questions[currentQuestionIndex];
//     return Container(
//       margin: EdgeInsets.all(40),
//       child: SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               currentQuestion.text,
//               style: GoogleFonts.lato(
//                 color: Color.fromARGB(255, 220, 162, 230),
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             ...currentQuestion.getShuffledAnswers().map((answer) {
//               return AnswerButton(
//                   answerText: answer,
//                   onTap: () {
//                     answerQuestion(answer);
//                   });
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }
