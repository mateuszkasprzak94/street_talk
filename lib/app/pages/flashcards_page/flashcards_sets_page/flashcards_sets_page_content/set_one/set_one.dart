import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_one/cubit/set_one_cubit.dart';
import 'package:street_talk/app/widgets/flash_cards_column/flash_cards_content.dart';

class FlashCardsSetOne extends StatelessWidget {
  const FlashCardsSetOne({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => SetOneCubit()..start(),
      child: BlocBuilder<SetOneCubit, SetOneState>(
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
                      'Zestaw 1',
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
                SetOnePageViewContent(
                    word: 'Żelazko',
                    translation: '(La) plancha ',
                    pageIndex: 0),
                SetOnePageViewContent(
                    word: 'Ekspres do kawy',
                    translation: '(La) cafetera ',
                    pageIndex: 1),
                SetOnePageViewContent(
                    word: 'Zmywarka',
                    translation: '(El) lavavajillas ',
                    pageIndex: 2),
                SetOnePageViewContent(
                    word: 'Marchewka',
                    translation: '(La) zanahoria ',
                    pageIndex: 3),
                SetOnePageViewContent(
                    word: 'Być wściekłym',
                    translation: 'Estar enojado ',
                    pageIndex: 4),
                SetOnePageViewContent(
                    word: 'Prostokąt',
                    translation: '(El) rectángulo ',
                    pageIndex: 5),
                SetOnePageViewContent(
                    word: 'Rozgadywać się',
                    translation: 'Enrollarse',
                    pageIndex: 6),
                SetOnePageViewContent(
                    word: 'Machlojka, przekręt',
                    translation: '(El) chanchullo',
                    pageIndex: 7),
                SetOnePageViewContent(
                    word: 'Fuszerka',
                    translation: '(La) chapuza ',
                    pageIndex: 8),
                SetOnePageViewContent(
                    word: 'Higiena',
                    translation: '(La) higiene ',
                    pageIndex: 9),
                SetOnePageViewContent(
                    word: 'Amunicja',
                    translation: '(La) munición ',
                    pageIndex: 10),
                SetOnePageViewContent(
                    word: 'Plecak',
                    translation: '(La) mochila ',
                    pageIndex: 11),
                SetOnePageViewContent(
                    word: 'Funkcjonować',
                    translation: 'Funcionar ',
                    pageIndex: 12),
                SetOnePageViewContent(
                    word: 'Konsumpcjonizm ',
                    translation: '(El) consumismo ',
                    pageIndex: 13),
                SetOnePageViewContent(
                    word: 'Piramida',
                    translation: '(La) pirámide ',
                    pageIndex: 14),
                SetOnePageViewContent(
                    word: 'Ale się przestraszyłem/am!',
                    translation: '¡Qué susto! ',
                    pageIndex: 15),
                SetOnePageViewContent(
                    word: 'Ale mi się nie chce!',
                    translation: '¡Qué pereza! ',
                    pageIndex: 16),
                SetOnePageViewContent(
                    word: 'Ale słodki/uroczy!',
                    translation: '¡Qué cuco!',
                    pageIndex: 17),
                SetOnePageViewContent(
                    word: 'Archipelag',
                    translation: '(El) archipiélago ',
                    pageIndex: 18),
                SetOnePageViewContent(
                    word: 'Profil', translation: '(El) perfil', pageIndex: 19),
                SetOnePageViewContent(
                    word: 'Zasnąć', translation: 'Dormirse', pageIndex: 20),
                SetOnePageViewContent(
                    word: 'Przytulać', translation: 'Abrazar ', pageIndex: 21),
                SetOnePageViewContent(
                    word: 'Głaskać ', translation: 'Acariciar ', pageIndex: 22),
                SetOnePageViewContent(
                    word: 'Migrena',
                    translation: '(La) migraña ',
                    pageIndex: 23),
                SetOnePageViewContent(
                    word: 'Tenisista/tenisistka',
                    translation: '(El/la) tenista ',
                    pageIndex: 24),
                SetOnePageViewContent(
                    word: 'Orkiestra',
                    translation: '(La) orquesta ',
                    pageIndex: 25),
                SetOnePageViewContent(
                    word: 'Umowa/kontrakt',
                    translation: '(El) contrato ',
                    pageIndex: 26),
                SetOnePageViewContent(
                    word: 'Wanilia',
                    translation: '(La) Vainilla ',
                    pageIndex: 27),
                SetOnePageViewContent(
                    word: 'Ale słabo!',
                    translation: '¡Qué chungo! ',
                    pageIndex: 28),
                SetOnePageViewContent(
                    word: 'Uciec bez płacenia (z restauracji)',
                    translation: 'Hacer un simpa ',
                    pageIndex: 29),
                SetOnePageViewContent(
                    word: 'Wyraź swoją opinię!',
                    translation: '¡Mójate! ',
                    pageIndex: 30),
              ],
            ),
          );
        },
      ),
    );
  }
}
