import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/pages/flashcards_page/cubit/flashcards_cubit.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';

class FlashCardsPage extends StatelessWidget {
  const FlashCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => FlashcardsCubit(5)..start(),
      child: Scaffold(
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
        body: BlocBuilder<FlashcardsCubit, FlashcardsState>(
          builder: (context, state) {
            return PageView(
              controller: state.controllerFlashPage,
              children: [
                PageViewContent(
                    controllerFlashPage: state.controllerFlashPage,
                    word: 'słowo',
                    translation: 'word'),
                PageViewContent(
                    controllerFlashPage: state.controllerFlashPage,
                    word: 'pies',
                    translation: 'dog'),
                PageViewContent(
                    controllerFlashPage: state.controllerFlashPage,
                    word: 'kot',
                    translation: 'cat'),
                PageViewContent(
                    controllerFlashPage: state.controllerFlashPage,
                    word: 'drzewo',
                    translation: 'tree'),
                PageViewContent(
                    controllerFlashPage: state.controllerFlashPage,
                    word: 'samochód',
                    translation: 'car'),
                PageViewContent(
                    controllerFlashPage: state.controllerFlashPage,
                    word: 'dwa',
                    translation: 'two'),
              ],
            );
          },
        ),
        endDrawer: const NavigationDrawerWidget(),
      ),
    );
  }
}

class PageViewContent extends StatelessWidget {
  const PageViewContent({
    super.key,
    required this.controllerFlashPage,
    required this.word,
    required this.translation,
  });

  final PageController? controllerFlashPage;
  final String word;
  final String translation;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlashcardsCubit, FlashcardsState>(
      builder: (context, state) {
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
                child: state.isTranslationVisible
                    ? Text(
                        translation,
                        style:
                            const TextStyle(fontSize: 30, color: Colors.grey),
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        onPressed: () {
                          context
                              .read<FlashcardsCubit>()
                              .toggleTranslationVisibility();
                        },
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
                    context
                        .read<FlashcardsCubit>()
                        .updateSadIconColor(!state.sadIconColor, false);
                  },
                  icon: ImageIcon(
                    const AssetImage(
                      'assets/custom_icons/sad.png',
                    ),
                    color: state.sadIconColor ? Colors.red : Colors.black,
                  ),
                ),
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    context
                        .read<FlashcardsCubit>()
                        .updateSmileIconColor(!state.smileIconColor, false);
                  },
                  icon: ImageIcon(
                    const AssetImage(
                      'assets/custom_icons/smile.png',
                    ),
                    color: state.smileIconColor ? Colors.green : Colors.black,
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
                      onPressed: () {
                        context.read<FlashcardsCubit>().previusPage();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<FlashcardsCubit>().nextPage();
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
