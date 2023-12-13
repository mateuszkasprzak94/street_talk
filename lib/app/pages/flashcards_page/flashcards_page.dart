import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';

class FlashCardsPage extends StatefulWidget {
  const FlashCardsPage({super.key});

  @override
  State<FlashCardsPage> createState() => _FlashCardsPageState();
}

class _FlashCardsPageState extends State<FlashCardsPage> {
  bool isTranslationVisible = false;
  Color sadIconColor = Colors.black;
  Color smileIconColor = Colors.black;
  final controllerFlashPage = PageController(initialPage: 0);

  @override
  void dispose() {
    controllerFlashPage.dispose();

    super.dispose();
  }

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
      body: PageView(
        controller: controllerFlashPage,
        children: [
          _page('słowo', 'word'),
          _page('pies', 'dog'),
          _page('kot', 'cat'),
          _page('drzewo', 'tree'),
          _page('samochód', 'car'),
          _page('dwa', 'two'),
        ],
      ),
      endDrawer: const NavigationDrawerWidget(),
    );
  }

  Column _page(String word, String translation) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 150),
        Text(
          word,
          style: const TextStyle(fontSize: 50),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 50,
          child: Align(
            alignment: Alignment.center,
            child: isTranslationVisible
                ? Text(
                    translation,
                    style: const TextStyle(fontSize: 30, color: Colors.grey),
                  )
                : ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () => setState(
                        () => isTranslationVisible = !isTranslationVisible),
                    child: const Text(
                      'Pokaż tłumaczenie',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                setState(() {
                  if (sadIconColor == Colors.black &&
                      smileIconColor != Colors.green) {
                    sadIconColor = Colors.red;
                  } else {
                    sadIconColor = Colors.black;
                  }
                });
              },
              icon: ImageIcon(
                const AssetImage(
                  'assets/custom_icons/sad.png',
                ),
                color: sadIconColor,
              ),
            ),
            IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                setState(() {
                  if (smileIconColor == Colors.black &&
                      sadIconColor != Colors.red) {
                    smileIconColor = Colors.green;
                  } else {
                    smileIconColor = Colors.black;
                  }
                });
              },
              icon: ImageIcon(
                const AssetImage(
                  'assets/custom_icons/smile.png',
                ),
                color: smileIconColor,
              ),
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => controllerFlashPage.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                IconButton(
                  onPressed: () => controllerFlashPage.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut),
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
