import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_one/set_one.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_three/set_three.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_two/set_two.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FlashCardsPage extends StatelessWidget {
  const FlashCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Transform.scale(
          scale: 1.6,
          child: Animate(
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/flag/flag.png',
              ),
            ).animate().fade(delay: 300.ms, duration: 500.ms).slideX(),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kRedColor,
            ),
            child: Column(children: [
              Text(
                'Fiszki',
                style: GoogleFonts.bebasNeue(
                    color: Colors.white, fontSize: screenWidth / 12),
              ),
              Text(
                'Testuj swoją wiedzę – powodzenia z fiszkami!',
                style: GoogleFonts.lora(
                    color: Colors.white, fontSize: screenWidth / 28),
              ),
            ]),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Animate(
              child: FloatingActionButton.large(
                heroTag: 'btn1',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FlashCardsSetOne(),
                    ),
                  );
                },
                backgroundColor: kRedColor,
                child: const Text(
                  'Zestaw 1',
                  style: TextStyle(color: kRedColor),
                ).animate(delay: 1200.ms).tint(color: Colors.white),
              ).animate().fade(delay: 400.ms, duration: 900.ms).scale(),
            ),
            const SizedBox(height: 20),
            Animate(
              child: FloatingActionButton.large(
                heroTag: 'btn2',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FlashCardsSetTwo(),
                    ),
                  );
                },
                backgroundColor: kRedColor,
                child: const Text(
                  'Zestaw 2',
                  style: TextStyle(color: kRedColor),
                ).animate(delay: 1600.ms).tint(color: Colors.white),
              ).animate().fade(delay: 800.ms, duration: 900.ms).scale(),
            ),
            const SizedBox(height: 20),
            Animate(
              child: FloatingActionButton.large(
                heroTag: 'btn3',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FlashCardsSetThree(),
                    ),
                  );
                },
                backgroundColor: kRedColor,
                child: const Text(
                  'Zestaw 3',
                  style: TextStyle(color: kRedColor),
                ).animate(delay: 2000.ms).tint(color: Colors.white),
              ).animate().fade(delay: 1200.ms, duration: 900.ms).scale(),
            ),
          ],
        ),
      ),
      endDrawer: const NavigationDrawerWidget(),
    );
  }
}
