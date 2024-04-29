import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/widgets/animations/animation.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kYellowColor,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FadeInAnimation(
                  delay: 1.3,
                  child: Text(
                    'Mów jak native',
                    style: GoogleFonts.bebasNeue(
                        letterSpacing: 1, fontSize: 40, color: Colors.white),
                  ),
                ),
                FadeInAnimation(
                  delay: 1.6,
                  child: Text(
                    'wyrażenia, które ułatwią Ci codzienną komunikację',
                    style: GoogleFonts.lora(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/assets_homepage/homepage.jpg'),
              fit: BoxFit.cover),
        ),
      ),
      endDrawer: const NavigationDrawerWidget(),
    );
  }
}
