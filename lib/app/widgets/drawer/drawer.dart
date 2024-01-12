import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/drawer/drawer_content/about_spain/about_spain.dart';
import 'package:street_talk/app/drawer/drawer_content/e_book/e_book.dart';
import 'package:street_talk/app/drawer/drawer_content/favourites/favourites.dart';
import 'package:street_talk/app/drawer/drawer_content/fun_facts/fun_facts.dart';
import 'package:street_talk/app/drawer/drawer_content/verbs/verbs.dart';
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
        color: const Color(0xFFc60b1e),
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
              leading: const Icon(Icons.home_outlined),
              title: const Text('Strona główna'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text('Odmiana czasowników'),
              onTap: () {
                // close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const VerbsPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.map_outlined),
              title: const Text('O Hiszpanii'),
              onTap: () {
                // close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AboutSpainPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.question_mark),
              title: const Text('Ciekawostki'),
              onTap: () {
                // close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FunFactsPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite_border),
              title: const Text('Ulubione'),
              onTap: () {
                // close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FavouritesPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Materiały edukacyjne'),
              onTap: () {
                // close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EBookPage(),
                  ),
                );
              },
            ),
          ],
        ),
      );
}
