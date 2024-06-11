import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_page.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/situation_page/situation_page_content.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/street_page/street_page_content.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/welcome_goodbye_page/welcome_goodbye_page_content.dart';
import 'package:street_talk/app/widgets/animations/animation.dart';
import 'package:street_talk/app/widgets/buttons/colloquialisms_page_button.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';

class ColloquialismsPage extends StatefulWidget {
  const ColloquialismsPage({super.key});

  @override
  State<ColloquialismsPage> createState() => _ColloquialismsPageState();
}

class _ColloquialismsPageState extends State<ColloquialismsPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
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
            ),
          ).animate().fade(delay: 500.ms, duration: 500.ms).slideX(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: FadeInAnimation(
            delay: 1.3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: kRedGradient,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 1.5, bottom: 5),
                child: Column(
                  children: [
                    Text(
                      'Kolokwializmy',
                      style: GoogleFonts.bebasNeue(
                          color: Colors.white, fontSize: screenWidth / 12),
                    ),
                    AutoSizeText(
                      'Tutaj nauczysz się jak kolokwialnie wyrażać emocje!',
                      style: GoogleFonts.lora(
                          color: Colors.white, fontSize: screenWidth / 28),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: FadeInAnimation(
        delay: 1.6,
        child: ListView(
          children: [
            ColloquialismsButtonWidget(
              image: Image.asset('assets/images/bull_no_bg.png'),
              polishTitle: 'Jak wyrazić emocje',
              spanishTitle: 'Cómo expresar emociones',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const EmotionsPage(),
                  ),
                );
              },
            ),
            ColloquialismsButtonWidget(
              image: Image.asset('assets/images/street_no_bg.png'),
              polishTitle: 'Hiszpański prosto z ulicy',
              spanishTitle: 'El español de la calle',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const StreetPage(),
                  ),
                );
              },
            ),
            ColloquialismsButtonWidget(
              image: Image.asset('assets/images/situation_no_bg.png'),
              polishTitle: 'Na konkretną sytuacje',
              spanishTitle: 'Para una situación específica',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const SituationPage(),
                  ),
                );
              },
            ),
            ColloquialismsButtonWidget(
              image: Image.asset('assets/images/goodbye.jpg'),
              polishTitle: 'Przywitania i pożegnania',
              spanishTitle: 'Saludos y despedidas',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const WelcomeGoodbyePage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      endDrawer: const NavigationDrawerWidget(),
    );
  }
}
