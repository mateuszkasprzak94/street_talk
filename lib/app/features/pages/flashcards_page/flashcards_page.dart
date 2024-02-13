import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_one/set_one.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_three/set_three.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_two/set_two.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';

class FlashCardsPage extends StatelessWidget {
  const FlashCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kRedDrawer),
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
            ).animate().fade(delay: 300.ms, duration: 1000.ms).scale(),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: kRedGradient,
              ),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 20),
            Animate(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FlashCardsSetOne(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(colors: kRedGradient),
                  ),
                  child: const Text(
                    'Zestaw 1',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )
                      .animate(delay: 1000.ms)
                      .fade(delay: 150.ms, duration: 600.ms),
                ).animate().fade(delay: 200.ms, duration: 700.ms).scale(),
              ),
            ),
            Animate(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FlashCardsSetTwo(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(colors: kRedGradient),
                  ),
                  child: const Text(
                    'Zestaw 2',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )
                      .animate(delay: 1400.ms)
                      .fade(delay: 150.ms, duration: 600.ms),
                ).animate().fade(delay: 600.ms, duration: 700.ms).scale(),
              ),
            ),
            Animate(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FlashCardsSetThree(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(colors: kRedGradient),
                  ),
                  child: const Text(
                    'Zestaw 3',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )
                      .animate(delay: 1800.ms)
                      .fade(delay: 150.ms, duration: 600.ms),
                ).animate().fade(delay: 1000.ms, duration: 700.ms).scale(),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      endDrawer: const NavigationDrawerWidget(),
    );
  }
}
