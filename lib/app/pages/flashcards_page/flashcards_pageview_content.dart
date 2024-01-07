import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:street_talk/app/pages/flashcards_page/cubit/flashcards_cubit.dart';
import 'package:street_talk/app/widgets/flash_cards_column/flash_cards_content.dart';

class FlashCardsPageViewContent extends StatelessWidget {
  const FlashCardsPageViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlashCardsCubit, FlashCardsState>(
      builder: (context, state) {
        return PageView(
          controller: state.controllerFlashPage,
          children: const [
            PageViewContent(
                word: 'Żelazko', translation: '(La) plancha ', pageIndex: 0),
            PageViewContent(
                word: 'Ekspres do kawy',
                translation: '(La) cafetera ',
                pageIndex: 1),
            PageViewContent(
                word: 'Zmywarka',
                translation: '(El) lavavajillas ',
                pageIndex: 2),
            PageViewContent(
                word: 'Marchewka',
                translation: '(La) zanahoria ',
                pageIndex: 3),
            PageViewContent(
                word: 'Być wściekłym',
                translation: 'Estar enojado ',
                pageIndex: 4),
            PageViewContent(
                word: 'Prostokąt',
                translation: '(El) rectángulo ',
                pageIndex: 5),
            PageViewContent(
                word: 'Rozgadywać się',
                translation: 'Enrollarse',
                pageIndex: 6),
            PageViewContent(
                word: 'Machlojka, przekręt',
                translation: '(El) chanchullo',
                pageIndex: 7),
            PageViewContent(
                word: 'Fuszerka', translation: '(La) chapuza ', pageIndex: 8),
            PageViewContent(
                word: 'Higiena', translation: '(La) higiene ', pageIndex: 9),
            PageViewContent(
                word: 'Amunicja', translation: '(La) munición ', pageIndex: 10),
            PageViewContent(
                word: 'Plecak', translation: '(La) mochila ', pageIndex: 11),
            PageViewContent(
                word: 'Funkcjonować', translation: 'Funcionar ', pageIndex: 12),
            PageViewContent(
                word: 'Konsumpcjonizm ',
                translation: '(El) consumismo ',
                pageIndex: 13),
            PageViewContent(
                word: 'Piramida', translation: '(La) pirámide ', pageIndex: 14),
            PageViewContent(
                word: 'Ale się przestraszyłem/am!',
                translation: '¡Qué susto! ',
                pageIndex: 15),
            PageViewContent(
                word: 'Ale mi się nie chce!',
                translation: '¡Qué pereza! ',
                pageIndex: 16),
            PageViewContent(
                word: 'Ale słodki/uroczy!',
                translation: '¡Qué cuco!',
                pageIndex: 17),
            PageViewContent(
                word: 'Archipelag',
                translation: '(El) archipiélago ',
                pageIndex: 18),
            PageViewContent(
                word: 'Profil', translation: '(El) perfil', pageIndex: 19),
            PageViewContent(
                word: 'Zasnąć', translation: 'Dormirse', pageIndex: 20),
            PageViewContent(
                word: 'Przytulać', translation: 'Abrazar ', pageIndex: 21),
            PageViewContent(
                word: 'Głaskać ', translation: 'Acariciar ', pageIndex: 22),
            PageViewContent(
                word: 'Migrena', translation: '(La) migraña ', pageIndex: 23),
            PageViewContent(
                word: 'Tenisista/tenisistka',
                translation: '(El/la) tenista ',
                pageIndex: 24),
            PageViewContent(
                word: 'Orkiestra',
                translation: '(La) orquesta ',
                pageIndex: 25),
            PageViewContent(
                word: 'Umowa/kontrakt',
                translation: '(El) contrato ',
                pageIndex: 26),
            PageViewContent(
                word: 'Wanilia', translation: '(La) Vainilla ', pageIndex: 27),
            PageViewContent(
                word: 'Ale słabo!',
                translation: '¡Qué chungo! ',
                pageIndex: 28),
            PageViewContent(
                word: 'Uciec bez płacenia (z restauracji)',
                translation: 'Hacer un simpa ',
                pageIndex: 29),
            PageViewContent(
                word: 'Wyraź swoją opinię!',
                translation: '¡Mójate! ',
                pageIndex: 30),
            PageViewContent(
                word: 'Nudziarz/osoba, która lubi psuć nastrój',
                translation: '(El) aguafiestas ',
                pageIndex: 31),
            PageViewContent(
                word: 'Fajka', translation: '(La) pipa ', pageIndex: 32),
            PageViewContent(
                word: 'Chleb', translation: '(El) pan ', pageIndex: 33),
            PageViewContent(
                word: 'Narkotyki', translation: '(La) droga ', pageIndex: 34),
            PageViewContent(
                word: 'Ubrania', translation: '(La) ropa ', pageIndex: 35),
            PageViewContent(
                word: 'Kolacja', translation: '(La) cena ', pageIndex: 36),
            PageViewContent(
                word: 'Mała ranka', translation: '(La) pupa', pageIndex: 37),
            PageViewContent(
                word: 'Ksiądz', translation: '(El) cura ', pageIndex: 38),
            PageViewContent(
                word: 'Podpis', translation: '(La) firma ', pageIndex: 39),
            PageViewContent(
                word: 'Stopy', translation: '(Los) pies ', pageIndex: 40),
            PageViewContent(
                word: 'Żaba', translation: '(La) rana ', pageIndex: 41),
            PageViewContent(
                word: 'Plotka/fake news',
                translation: '(El) bulo ',
                pageIndex: 42),
            PageViewContent(
                word: 'Być przeziębionym ',
                translation: 'Estar constipado ',
                pageIndex: 43),
            PageViewContent(
                word: 'Wkurzasz mnie/działasz mi na nerwy',
                translation: '¡Me sacas de quicio! ',
                pageIndex: 44),
            PageViewContent(
                word: 'Nie ma takiej opcji!',
                translation: '¡Qué va! ',
                pageIndex: 45),
            PageViewContent(
                word: 'Jest bardzo późno',
                translation: 'Son las tantas ',
                pageIndex: 46),
            PageViewContent(
                word: 'Przypałowa akcja/ dziwna rzecz, sytuacja',
                translation: '(La) movida ',
                pageIndex: 47),
            PageViewContent(
                word: 'Ja odpadam/ Ja rezygnuję',
                translation: 'Yo paso ',
                pageIndex: 48),
            PageViewContent(
                word: 'Ślina', translation: '(La) baba ', pageIndex: 49),
            PageViewContent(
                word: 'Kopalnia', translation: '(La) mina ', pageIndex: 50),
            PageViewContent(
                word: 'Szczur', translation: '(La) rata ', pageIndex: 51),
            PageViewContent(
                word: 'Piasek', translation: '(La) arena ', pageIndex: 52),
            PageViewContent(
                word: 'Piłka', translation: '(El) balón ', pageIndex: 53),
            PageViewContent(
                word: 'Zakręt', translation: '(La) curva ', pageIndex: 54),
            PageViewContent(
                word: 'Garb', translation: '(La) joroba ', pageIndex: 55),
            PageViewContent(
                word: 'Łóżko piętrowe',
                translation: '(La) litera ',
                pageIndex: 56),
            PageViewContent(
                word: 'Zwierzątko domowe',
                translation: '(La) mascota ',
                pageIndex: 57),
            PageViewContent(
                word: 'Mech', translation: '(El) musgo ', pageIndex: 58),
            PageViewContent(
                word: 'Niedźwiedzica ',
                translation: '(La) osa ',
                pageIndex: 59),
            PageViewContent(
                word: 'Słomka/słoma', translation: '(La) paja ', pageIndex: 60),
            PageViewContent(
                word: 'Lokalizacja',
                translation: '(La) ubicación ',
                pageIndex: 61),
            PageViewContent(
                word: 'Majsterkować/ dłubać',
                translation: 'Trastear ',
                pageIndex: 62),
            PageViewContent(
                word: 'Bez owijania w bawełnę',
                translation: 'Sin rodeos ',
                pageIndex: 63),
            PageViewContent(
                word: 'Nie rozumiem/nie czaję',
                translation: 'No lo pillo ',
                pageIndex: 64),
            PageViewContent(
                word: 'Super/fajne', translation: 'Chachi', pageIndex: 65),
            PageViewContent(
                word: 'Ze słyszenia', translation: 'De oídas ', pageIndex: 66),
            PageViewContent(
                word: 'Zakwasy', translation: 'Agujetas', pageIndex: 67),
            PageViewContent(
                word: 'Pochwała', translation: '(El) encomio ', pageIndex: 68),
            PageViewContent(
                word: 'Okrucieństwo',
                translation: '(La) ferocidad ',
                pageIndex: 69),
            PageViewContent(
                word: 'Potwierdzam ', translation: 'Doy fe ', pageIndex: 70),
            PageViewContent(
                word: 'Taa jasne',
                translation: '¡Y una leche! ',
                pageIndex: 71),
            PageViewContent(
                word: 'Mroczny', translation: 'Tenebroso', pageIndex: 72),
            PageViewContent(
                word: 'Głupiec', translation: '(El) necio ', pageIndex: 73),
            PageViewContent(
                word: 'Spędzić super czas/świetnie się bawić',
                translation: 'Pasarlo teta ',
                pageIndex: 74),
            PageViewContent(
                word: 'Nic specjalnego/ takie sobie',
                translation: 'Sin más ',
                pageIndex: 75),
            PageViewContent(
                word: 'Pozorant',
                translation: '(El) posturero ',
                pageIndex: 76),
            PageViewContent(
                word: 'Twerkować', translation: 'Perrear ', pageIndex: 77),
            PageViewContent(
                word: '(zakładając) z góry',
                translation: 'A priori ',
                pageIndex: 78),
            PageViewContent(
                word: 'Początkujący',
                translation: 'Incipiente ',
                pageIndex: 79),
            PageViewContent(
                word: 'Zajebisty', translation: 'Cojonudo ', pageIndex: 80),
            PageViewContent(
                word: 'Nieprzyjemna sytuacja/duży problem',
                translation: '(El) marronazo ',
                pageIndex: 81),
            PageViewContent(
                word: 'Mi to obojętne/mam to gdzieś',
                translation: 'Me la pela ',
                pageIndex: 82),
            PageViewContent(
                word: 'Kłótnia',
                translation: '(La) chamusquina ',
                pageIndex: 83),
            PageViewContent(
                word: 'Gruchot/grat',
                translation: '(El) cacharro ',
                pageIndex: 84),
            PageViewContent(
                word: 'Frajer', translation: '(El) pringado ', pageIndex: 85),
            PageViewContent(
                word: 'Lizus', translation: 'El lameculos ', pageIndex: 86),
            PageViewContent(
                word: 'Gratka/okazja',
                translation: 'El chollo ',
                pageIndex: 87),
            PageViewContent(
                word: 'Podrywać/flirtować',
                translation: 'Ligar ',
                pageIndex: 88),
            PageViewContent(
                word: 'Szybki numerek',
                translation: '(El) quiquis',
                pageIndex: 89),
            PageViewContent(
                word: 'Euro', translation: '(El) pavo ', pageIndex: 90),
            PageViewContent(
                word: 'Śpioch ', translation: '(El) dormilón ', pageIndex: 91),
            PageViewContent(
                word: 'Mądrala',
                translation: '(El) sabelotodo ',
                pageIndex: 92),
            PageViewContent(
                word: 'Pleciuch/gaduła',
                translation: '(El) bocachancla ',
                pageIndex: 93),
            PageViewContent(
                word: 'Przyzwoitka ',
                translation: '(El) sujetavelas ',
                pageIndex: 94),
            PageViewContent(
                word: 'Ktoś kto jest w gorącej wodzie kąpany ',
                translation: '(El) cagaprisas ',
                pageIndex: 95),
            PageViewContent(
                word: 'Korkociąg ',
                translation: '(El) sacacorchos ',
                pageIndex: 96),
            PageViewContent(
                word: 'Suszarka do naczyń',
                translation: '(El) escurreplatos ',
                pageIndex: 97),
          ],
        );
      },
    );
  }
}
