import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_one/set_one.dart';
import 'package:street_talk/app/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_three/set_three.dart';
import 'package:street_talk/app/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_two/set_two.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';

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
          child: Container(
            margin: const EdgeInsets.only(left: 15),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/flag/flag.png',
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFc60b1e),
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
            FloatingActionButton.large(
              heroTag: 'btn1',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const FlashCardsSetOne(),
                  ),
                );
              },
              backgroundColor: const Color(0xFFc60b1e),
              child: const Text(
                'Zestaw 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            FloatingActionButton.large(
              heroTag: 'btn2',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const FlashCardsSetTwo(),
                  ),
                );
              },
              backgroundColor: const Color(0xFFc60b1e),
              child: const Text(
                'Zestaw 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            FloatingActionButton.large(
              heroTag: 'btn3',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const FlashCardsSetThree(),
                  ),
                );
              },
              backgroundColor: const Color(0xFFc60b1e),
              child: const Text(
                'Zestaw 3',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      endDrawer: const NavigationDrawerWidget(),
    );
  }
}
