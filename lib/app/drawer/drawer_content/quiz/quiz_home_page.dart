import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/widgets/quiz/custom_close_button.dart';

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
        centerTitle: true,
        leading: const CustomCloseButton(),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage('assets/images/logo.jpg'),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kRedColor,
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
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
        child: ListView(
          children: [
            Text(
              '¡Vamos a jugar!',
              style: GoogleFonts.alike(
                fontSize: 35,
                fontWeight: FontWeight.w800,
                color: const Color.fromARGB(230, 254, 190, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
