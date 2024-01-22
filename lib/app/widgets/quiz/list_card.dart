import 'package:flutter/material.dart';
import 'package:street_talk/app/domain/models/quiz_card_details.model.dart';
import 'package:street_talk/app/drawer/drawer_content/quiz/screens/before_start_screen.dart';

class QuizListCard extends StatelessWidget {
  const QuizListCard(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BeforeStartScreen(
                      selectedIndex: index,
                    )),
          );
        },
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 55),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: quizCardDetailList[index].gradientsColor,
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 3),
                    blurRadius: 7,
                    spreadRadius: 5,
                    color: quizCardDetailList[index].shadowColor,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    quizCardDetailList[index].title,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Hero(
              tag: quizCardDetailList[index].iconTag,
              child: Image.asset(
                quizCardDetailList[index].iconName,
                scale: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
