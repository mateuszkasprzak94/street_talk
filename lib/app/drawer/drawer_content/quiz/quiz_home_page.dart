import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/domain/models/quiz_card_details_model.dart';
import 'package:street_talk/app/widgets/animations/animation.dart';
import 'package:street_talk/app/widgets/quiz/custom_close_button.dart';
import 'package:street_talk/app/widgets/quiz/list_card.dart';

class QuizHomePage extends StatefulWidget {
  const QuizHomePage({super.key});

  @override
  State<QuizHomePage> createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        leading: const FadeInAnimation(
          delay: 1.3,
          child: CustomCloseButton(),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: FadeInAnimation(
              delay: 1.3,
              child: CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage('assets/images/logo.jpg'),
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: FadeInAnimation(
            delay: 1.6,
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    kRedColor,
                    kYellowColor,
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  'Pora na QUIZ!',
                  style: GoogleFonts.bebasNeue(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: screenWidth / 12),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
          child: Column(
            children: [
              Row(
                children: [
                  FadeInAnimation(
                    delay: 1.9,
                    child: Text(
                      '¡Vamos a jugar!',
                      style: GoogleFonts.alike(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromARGB(230, 254, 190, 0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ListView.builder(
                itemCount: quizCardDetailList.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return FadeInAnimation(
                    delay: 2.1,
                    child: QuizListCard(index),
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
