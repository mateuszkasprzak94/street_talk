import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_three/cubit/set_three_cubit.dart';
import 'package:street_talk/app/widgets/flash_cards_column/flash_cards_content.dart';
import 'package:street_talk/app/widgets/quiz/custom_close_button.dart';

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
              leading: const CustomCloseButton(),
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
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: kRedGradient,
                    ),
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
