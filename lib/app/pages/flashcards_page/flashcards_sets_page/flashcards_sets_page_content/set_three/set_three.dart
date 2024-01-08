import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/models/flashcards_model.dart';
import 'package:street_talk/app/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_three/cubit/set_three_cubit.dart';
import 'package:street_talk/app/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_two/cubit/set_two_cubit.dart';

class FlashCardsSetThree extends StatelessWidget {
  const FlashCardsSetThree({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => SetThreeCubit()..start(),
      child: BlocBuilder<SetThreeCubit, SetThreeState>(
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
                      'Zestaw 3',
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
                SetThreePageViewContent(
                    word: 'Super/fajne', translation: 'Chachi', pageIndex: 1),
                SetThreePageViewContent(
                    word: 'Ze słyszenia',
                    translation: 'De oídas ',
                    pageIndex: 2),
                SetThreePageViewContent(
                    word: 'Zakwasy', translation: 'Agujetas', pageIndex: 3),
                SetThreePageViewContent(
                    word: 'Pochwała',
                    translation: '(El) encomio ',
                    pageIndex: 4),
                SetThreePageViewContent(
                    word: 'Okrucieństwo',
                    translation: '(La) ferocidad ',
                    pageIndex: 5),
                SetThreePageViewContent(
                    word: 'Potwierdzam ', translation: 'Doy fe ', pageIndex: 6),
                SetThreePageViewContent(
                    word: 'Taa jasne',
                    translation: '¡Y una leche! ',
                    pageIndex: 7),
                SetThreePageViewContent(
                    word: 'Mroczny', translation: 'Tenebroso', pageIndex: 8),
                SetThreePageViewContent(
                    word: 'Głupiec', translation: '(El) necio ', pageIndex: 9),
                SetThreePageViewContent(
                    word: 'Spędzić super czas/świetnie się bawić',
                    translation: 'Pasarlo teta ',
                    pageIndex: 10),
                SetThreePageViewContent(
                    word: 'Nic specjalnego/ takie sobie',
                    translation: 'Sin más ',
                    pageIndex: 11),
                SetThreePageViewContent(
                    word: 'Pozorant',
                    translation: '(El) posturero ',
                    pageIndex: 12),
                SetThreePageViewContent(
                    word: 'Twerkować', translation: 'Perrear ', pageIndex: 13),
                SetThreePageViewContent(
                    word: '(zakładając) z góry',
                    translation: 'A priori ',
                    pageIndex: 14),
                SetThreePageViewContent(
                    word: 'Początkujący',
                    translation: 'Incipiente ',
                    pageIndex: 15),
                SetThreePageViewContent(
                    word: 'Zajebisty', translation: 'Cojonudo ', pageIndex: 16),
                SetThreePageViewContent(
                    word: 'Nieprzyjemna sytuacja/duży problem',
                    translation: '(El) marronazo ',
                    pageIndex: 17),
                SetThreePageViewContent(
                    word: 'Mi to obojętne/mam to gdzieś',
                    translation: 'Me la pela ',
                    pageIndex: 18),
                SetThreePageViewContent(
                    word: 'Kłótnia',
                    translation: '(La) chamusquina ',
                    pageIndex: 19),
                SetThreePageViewContent(
                    word: 'Gruchot/grat',
                    translation: '(El) cacharro ',
                    pageIndex: 20),
                SetThreePageViewContent(
                    word: 'Frajer',
                    translation: '(El) pringado ',
                    pageIndex: 21),
                SetThreePageViewContent(
                    word: 'Lizus', translation: 'El lameculos ', pageIndex: 22),
                SetThreePageViewContent(
                    word: 'Gratka/okazja',
                    translation: 'El chollo ',
                    pageIndex: 23),
                SetThreePageViewContent(
                    word: 'Podrywać/flirtować',
                    translation: 'Ligar ',
                    pageIndex: 24),
                SetThreePageViewContent(
                    word: 'Szybki numerek',
                    translation: '(El) quiquis',
                    pageIndex: 25),
                SetThreePageViewContent(
                    word: 'Euro', translation: '(El) pavo ', pageIndex: 26),
                SetThreePageViewContent(
                    word: 'Śpioch ',
                    translation: '(El) dormilón ',
                    pageIndex: 27),
                SetThreePageViewContent(
                    word: 'Mądrala',
                    translation: '(El) sabelotodo ',
                    pageIndex: 28),
                SetThreePageViewContent(
                    word: 'Pleciuch/gaduła',
                    translation: '(El) bocachancla ',
                    pageIndex: 29),
                SetThreePageViewContent(
                    word: 'Przyzwoitka ',
                    translation: '(El) sujetavelas ',
                    pageIndex: 30),
                SetThreePageViewContent(
                    word: 'Ktoś kto jest w gorącej wodzie kąpany ',
                    translation: '(El) cagaprisas ',
                    pageIndex: 31),
                SetThreePageViewContent(
                    word: 'Korkociąg ',
                    translation: '(El) sacacorchos ',
                    pageIndex: 32),
                SetThreePageViewContent(
                    word: 'Suszarka do naczyń',
                    translation: '(El) escurreplatos ',
                    pageIndex: 33),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SetThreePageViewContent extends StatelessWidget {
  const SetThreePageViewContent({
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
    return BlocBuilder<SetThreeCubit, SetThreeState>(
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
