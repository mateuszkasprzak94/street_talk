import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/models/flashcards_model.dart';
import 'package:street_talk/app/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_two/cubit/set_two_cubit.dart';

class FlashCardsSetTwo extends StatelessWidget {
  const FlashCardsSetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => SetTwoCubit()..start(),
      child: BlocBuilder<SetTwoCubit, SetTwoState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    radius: 30,
                    foregroundImage: AssetImage('assets/images/logo.jpg'),
                  ),
                )
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(70),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFc60b1e),
                  ),
                  child: Center(
                    child: Text(
                      'Zestaw 2',
                      style: GoogleFonts.bebasNeue(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontSize: screenWidth / 12),
                    ),
                  ),
                ),
              ),
            ),
            body: PageView(
              controller: state.controllerFlashPage,
              children: const [
                SetTwoPageViewContent(
                    word: 'Nudziarz/osoba, która lubi psuć nastrój',
                    translation: '(El) aguafiestas ',
                    pageIndex: 1),
                SetTwoPageViewContent(
                    word: 'Fajka', translation: '(La) pipa ', pageIndex: 2),
                SetTwoPageViewContent(
                    word: 'Chleb', translation: '(El) pan ', pageIndex: 3),
                SetTwoPageViewContent(
                    word: 'Narkotyki',
                    translation: '(La) droga ',
                    pageIndex: 4),
                SetTwoPageViewContent(
                    word: 'Ubrania', translation: '(La) ropa ', pageIndex: 5),
                SetTwoPageViewContent(
                    word: 'Kolacja', translation: '(La) cena ', pageIndex: 6),
                SetTwoPageViewContent(
                    word: 'Mała ranka', translation: '(La) pupa', pageIndex: 7),
                SetTwoPageViewContent(
                    word: 'Ksiądz', translation: '(El) cura ', pageIndex: 8),
                SetTwoPageViewContent(
                    word: 'Podpis', translation: '(La) firma ', pageIndex: 9),
                SetTwoPageViewContent(
                    word: 'Stopy', translation: '(Los) pies ', pageIndex: 10),
                SetTwoPageViewContent(
                    word: 'Żaba', translation: '(La) rana ', pageIndex: 11),
                SetTwoPageViewContent(
                    word: 'Plotka/fake news',
                    translation: '(El) bulo ',
                    pageIndex: 12),
                SetTwoPageViewContent(
                    word: 'Być przeziębionym ',
                    translation: 'Estar constipado ',
                    pageIndex: 13),
                SetTwoPageViewContent(
                    word: 'Wkurzasz mnie/działasz mi na nerwy',
                    translation: '¡Me sacas de quicio! ',
                    pageIndex: 14),
                SetTwoPageViewContent(
                    word: 'Nie ma takiej opcji!',
                    translation: '¡Qué va! ',
                    pageIndex: 15),
                SetTwoPageViewContent(
                    word: 'Jest bardzo późno',
                    translation: 'Son las tantas ',
                    pageIndex: 16),
                SetTwoPageViewContent(
                    word: 'Przypałowa akcja/ dziwna rzecz, sytuacja',
                    translation: '(La) movida ',
                    pageIndex: 17),
                SetTwoPageViewContent(
                    word: 'Ja odpadam/ Ja rezygnuję',
                    translation: 'Yo paso ',
                    pageIndex: 18),
                SetTwoPageViewContent(
                    word: 'Ślina', translation: '(La) baba ', pageIndex: 19),
                SetTwoPageViewContent(
                    word: 'Kopalnia', translation: '(La) mina ', pageIndex: 20),
                SetTwoPageViewContent(
                    word: 'Szczur', translation: '(La) rata ', pageIndex: 21),
                SetTwoPageViewContent(
                    word: 'Piasek', translation: '(La) arena ', pageIndex: 22),
                SetTwoPageViewContent(
                    word: 'Piłka', translation: '(El) balón ', pageIndex: 23),
                SetTwoPageViewContent(
                    word: 'Zakręt', translation: '(La) curva ', pageIndex: 24),
                SetTwoPageViewContent(
                    word: 'Garb', translation: '(La) joroba ', pageIndex: 25),
                SetTwoPageViewContent(
                    word: 'Łóżko piętrowe',
                    translation: '(La) litera ',
                    pageIndex: 26),
                SetTwoPageViewContent(
                    word: 'Zwierzątko domowe',
                    translation: '(La) mascota ',
                    pageIndex: 27),
                SetTwoPageViewContent(
                    word: 'Mech', translation: '(El) musgo ', pageIndex: 28),
                SetTwoPageViewContent(
                    word: 'Niedźwiedzica ',
                    translation: '(La) osa ',
                    pageIndex: 29),
                SetTwoPageViewContent(
                    word: 'Słomka/słoma',
                    translation: '(La) paja ',
                    pageIndex: 30),
                SetTwoPageViewContent(
                    word: 'Lokalizacja',
                    translation: '(La) ubicación ',
                    pageIndex: 31),
                SetTwoPageViewContent(
                    word: 'Majsterkować/ dłubać',
                    translation: 'Trastear ',
                    pageIndex: 32),
                SetTwoPageViewContent(
                    word: 'Bez owijania w bawełnę',
                    translation: 'Sin rodeos ',
                    pageIndex: 33),
                SetTwoPageViewContent(
                    word: 'Nie rozumiem/nie czaję',
                    translation: 'No lo pillo ',
                    pageIndex: 34),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SetTwoPageViewContent extends StatelessWidget {
  const SetTwoPageViewContent({
    super.key,
    required this.word,
    required this.translation,
    required this.pageIndex,
  });

  final String word;
  final String translation;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetTwoCubit, SetTwoState>(
      builder: (context, state) {
        final FlashCardsModel flashCardsModel = state.setOneModel[pageIndex];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 200,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    word,
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.center,
                child: flashCardsModel.isTranslationVisible
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
                              .read<SetTwoCubit>()
                              .toggleTranslationVisibility(pageIndex);
                        },
                        child: const Text(
                          'Pokaż tłumaczenie',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //       splashColor: Colors.transparent,
            //       highlightColor: Colors.transparent,
            //       onPressed: () {
            //         context.read<SetTwoCubit>().updateSadIconColor(
            //             pageIndex, !flashCardsModel.sadIconColor, false);
            //       },
            //       icon: ImageIcon(
            //         const AssetImage(
            //           'assets/custom_icons/sad.png',
            //         ),
            //         color: flashCardsModel.sadIconColor
            //             ? Colors.red
            //             : Colors.black,
            //       ),
            //     ),
            //     IconButton(
            //       splashColor: Colors.transparent,
            //       highlightColor: Colors.transparent,
            //       onPressed: () {
            //         context.read<SetTwoCubit>().updateSmileIconColor(
            //             pageIndex, !flashCardsModel.smileIconColor, false);
            //       },
            //       icon: ImageIcon(
            //         const AssetImage(
            //           'assets/custom_icons/smile.png',
            //         ),
            //         color: flashCardsModel.smileIconColor
            //             ? Colors.green
            //             : Colors.black,
            //       ),
            //     ),
            //   ],
            // ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<SetTwoCubit>().previusPage();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<SetTwoCubit>().nextPage();
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
