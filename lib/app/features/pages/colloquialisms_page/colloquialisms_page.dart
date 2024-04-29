import 'package:flutter/material.dart';
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
                  'Kolokwializmy',
                  style: GoogleFonts.bebasNeue(
                      color: Colors.white, fontSize: screenWidth / 12),
                ),
                Text(
                  'Tutaj nauczysz się jak kolokwialnie wyrażać emocje !',
                  style: GoogleFonts.lora(
                      color: Colors.white, fontSize: screenWidth / 27),
                ),
              ]),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          FadeInAnimation(
            delay: 1.6,
            child: ColloquialismsButtonWidget(
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
          ),
          FadeInAnimation(
            delay: 1.9,
            child: ColloquialismsButtonWidget(
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
          ),
          FadeInAnimation(
            delay: 2.1,
            child: ColloquialismsButtonWidget(
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
          ),
          FadeInAnimation(
            delay: 2.4,
            child: ColloquialismsButtonWidget(
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
          ),
          const SizedBox(height: 20),
        ],
      ),
      endDrawer: const NavigationDrawerWidget(),
    );
  }
}
