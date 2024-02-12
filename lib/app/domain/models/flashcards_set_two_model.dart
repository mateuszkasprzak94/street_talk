class FlashCardsTwoDetail {
  FlashCardsTwoDetail({
    required this.word,
    required this.translation,
  });

  final String word;
  final String translation;
}

List<FlashCardsTwoDetail> shuffleFlashCardsList(
    List<FlashCardsTwoDetail> list) {
  List<FlashCardsTwoDetail> shuffleList = List.from(list);
  shuffleList.shuffle();
  return shuffleList;
}

final List<FlashCardsTwoDetail> flashCardsDetailTwo = [
  FlashCardsTwoDetail(
    word: 'Nudziarz/osoba, która lubi psuć nastrój',
    translation: '(El) aguafiestas ',
  ),
  FlashCardsTwoDetail(
    word: 'Fajka',
    translation: '(La) pipa ',
  ),
  FlashCardsTwoDetail(
    word: 'Chleb',
    translation: '(El) pan ',
  ),
  FlashCardsTwoDetail(
    word: 'Narkotyki',
    translation: '(La) droga ',
  ),
  FlashCardsTwoDetail(
    word: 'Ubrania',
    translation: '(La) ropa ',
  ),
  FlashCardsTwoDetail(
    word: 'Kolacja',
    translation: '(La) cena ',
  ),
  FlashCardsTwoDetail(
    word: 'Mała ranka',
    translation: '(La) pupa',
  ),
  FlashCardsTwoDetail(
    word: 'Ksiądz',
    translation: '(El) cura ',
  ),
  FlashCardsTwoDetail(
    word: 'Podpis',
    translation: '(La) firma ',
  ),
  FlashCardsTwoDetail(
    word: 'Stopy',
    translation: '(Los) pies ',
  ),
  FlashCardsTwoDetail(
    word: 'Żaba',
    translation: '(La) rana ',
  ),
  FlashCardsTwoDetail(
    word: 'Plotka/fake news',
    translation: '(El) bulo ',
  ),
  FlashCardsTwoDetail(
    word: 'Być przeziębionym ',
    translation: 'Estar constipado ',
  ),
  FlashCardsTwoDetail(
    word: 'Wkurzasz mnie/działasz mi na nerwy',
    translation: '¡Me sacas de quicio! ',
  ),
  FlashCardsTwoDetail(
    word: 'Nie ma takiej opcji!',
    translation: '¡Qué va! ',
  ),
  FlashCardsTwoDetail(
    word: 'Jest bardzo późno',
    translation: 'Son las tantas ',
  ),
  FlashCardsTwoDetail(
    word: 'Przypałowa akcja/ dziwna rzecz, sytuacja',
    translation: '(La) movida ',
  ),
  FlashCardsTwoDetail(
    word: 'Ja odpadam/ Ja rezygnuję',
    translation: 'Yo paso ',
  ),
  FlashCardsTwoDetail(
    word: 'Ślina',
    translation: '(La) baba ',
  ),
  FlashCardsTwoDetail(
    word: 'Kopalnia',
    translation: '(La) mina ',
  ),
  FlashCardsTwoDetail(
    word: 'Szczur',
    translation: '(La) rata ',
  ),
  FlashCardsTwoDetail(
    word: 'Piasek',
    translation: '(La) arena ',
  ),
  FlashCardsTwoDetail(
    word: 'Piłka',
    translation: '(El) balón ',
  ),
  FlashCardsTwoDetail(
    word: 'Zakręt',
    translation: '(La) curva ',
  ),
  FlashCardsTwoDetail(
    word: 'Garb',
    translation: '(La) joroba ',
  ),
  FlashCardsTwoDetail(
    word: 'Łóżko piętrowe',
    translation: '(La) litera ',
  ),
  FlashCardsTwoDetail(
    word: 'Zwierzątko domowe',
    translation: '(La) mascota ',
  ),
  FlashCardsTwoDetail(
    word: 'Mech',
    translation: '(El) musgo ',
  ),
  FlashCardsTwoDetail(
    word: 'Niedźwiedzica ',
    translation: '(La) osa ',
  ),
  FlashCardsTwoDetail(
    word: 'Słomka/słoma',
    translation: '(La) paja ',
  ),
  FlashCardsTwoDetail(
    word: 'Lokalizacja',
    translation: '(La) ubicación ',
  ),
  FlashCardsTwoDetail(
    word: 'Majsterkować/ dłubać',
    translation: 'Trastear ',
  ),
  FlashCardsTwoDetail(
    word: 'Bez owijania w bawełnę',
    translation: 'Sin rodeos ',
  ),
  FlashCardsTwoDetail(
    word: 'Nie rozumiem/nie czaję',
    translation: 'No lo pillo ',
  ),
];

List<FlashCardsTwoDetail> flashCardsTwoShuffleList =
    shuffleFlashCardsList(flashCardsDetailTwo);
