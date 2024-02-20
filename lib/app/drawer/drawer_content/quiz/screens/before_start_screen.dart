import 'package:flutter/material.dart';
import 'package:street_talk/app/domain/models/quiz_card_details_model.dart';
import 'package:street_talk/app/drawer/drawer_content/quiz/screens/question_screen.dart';
import 'package:street_talk/app/widgets/quiz/custom_close_button.dart';

class BeforeStartScreen extends StatelessWidget {
  const BeforeStartScreen({required this.selectedIndex, super.key});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: quizCardDetailList[selectedIndex].gradientsColor,
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomCloseButton(),
              ],
            ),
            Text(
              quizCardDetailList[selectedIndex].title,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Hero(
              tag: quizCardDetailList[selectedIndex].iconTag,
              child: Image.asset(
                quizCardDetailList[selectedIndex].iconName,
                height: 250,
                width: 250,
              ),
            ),
            Column(
              children: [
                const Text(
                  'Jesteś Gotowy?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Quiz składa się z 10 pytań, na każde pytanie masz 15 sekund.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.55),
                  ),
                ),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizQuestionScreen(
                          categoryIndex: selectedIndex,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: quizCardDetailList[selectedIndex].shadowColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(3, 3),
                          blurRadius: 3,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ],
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: const Text(
                      'Zaczynam!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
