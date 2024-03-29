import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/drawer/drawer_content/spanish_events/spanish_events_page.dart';
import 'package:street_talk/app/drawer/drawer_content/e_book/e_book.dart';
import 'package:street_talk/app/drawer/drawer_content/quiz/quiz_home_page.dart';
import 'package:street_talk/app/features/pages/main_page/main_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: kRedGradient,
          ),
        ),
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, bottom: 24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/logo.jpg'),
            ),
            const SizedBox(height: 15),
            Text(
              'StreetTalk:',
              style: GoogleFonts.lora(
                  letterSpacing: 1,
                  fontSize: MediaQuery.of(context).size.width / 11,
                  color: Colors.white),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Język Hiszpański Kolokwialnie',
                style: GoogleFonts.lora(
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.width / 20,
                  color: Colors.white,
                ),
              ),
            ])
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Wrap(
          runSpacing: 15,
          children: [
            ListTile(
              leading: const Icon(
                Icons.home_outlined,
                color: kRedDrawer,
              ),
              title: const Text(
                'Strona główna',
                style: TextStyle(color: kRedDrawer),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.event,
                color: kRedDrawer,
              ),
              title: const Text(
                'Popularne wydarzenia',
                style: TextStyle(color: kRedDrawer),
              ),
              onTap: () {
                // close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SpanishEventsPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.lightbulb_outline,
                color: kRedDrawer,
              ),
              title: const Text(
                'Quiz',
                style: TextStyle(color: kRedDrawer),
              ),
              onTap: () {
                // close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const QuizHomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.school,
                color: kRedDrawer,
              ),
              title: const Text(
                'Materiały edukacyjne',
                style: TextStyle(color: kRedDrawer),
              ),
              onTap: () {
                // close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AnimatedSweepGradient(),
                  ),
                );
              },
            ),
          ],
        ),
      );
}
