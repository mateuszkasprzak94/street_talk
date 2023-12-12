import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';

class FlashCardsPage extends StatefulWidget {
  const FlashCardsPage({super.key});

  @override
  State<FlashCardsPage> createState() => _FlashCardsPageState();
}

class _FlashCardsPageState extends State<FlashCardsPage> {
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
      body: const Center(
        child: Text('Fiszki'),
      ),
      endDrawer: const NavigationDrawerWidget(),
    );
  }
}
