class FlashCardsOneDetail {
  FlashCardsOneDetail({
    required this.word,
    required this.translation,
  });

  final String word;
  final String translation;
}

List<FlashCardsOneDetail> shuffleFlashCardsList(
    List<FlashCardsOneDetail> list) {
  List<FlashCardsOneDetail> shuffleList = List.from(list);
  shuffleList.shuffle();
  return shuffleList;
}

final List<FlashCardsOneDetail> flashCardsDetailOne = [
  FlashCardsOneDetail(
    word: 'Żelazko',
    translation: '(La) plancha',
  ),
  FlashCardsOneDetail(
    word: 'Ekspres do kawy',
    translation: '(La) cafetera',
  ),
  FlashCardsOneDetail(
    word: 'Zmywarka',
    translation: '(El) lavavajillas',
  ),
  FlashCardsOneDetail(
    word: 'Marchewka',
    translation: '(La) zanahoria',
  ),
  FlashCardsOneDetail(
    word: 'Być wściekłym',
    translation: 'Estar enojado',
  ),
  FlashCardsOneDetail(
    word: 'Prostokąt',
    translation: '(El) rectángulo',
  ),
  FlashCardsOneDetail(
    word: 'Rozgadywać się',
    translation: 'Enrollarse',
  ),
  FlashCardsOneDetail(
    word: 'Machlojka, przekręt',
    translation: '(El) chanchullo',
  ),
  FlashCardsOneDetail(
    word: 'Fuszerka',
    translation: '(La) chapuza',
  ),
  FlashCardsOneDetail(
    word: 'Higiena',
    translation: '(La) higiene',
  ),
  FlashCardsOneDetail(
    word: 'Amunicja',
    translation: '(La) munición',
  ),
  FlashCardsOneDetail(
    word: 'Plecak',
    translation: '(La) mochila',
  ),
  FlashCardsOneDetail(
    word: 'Funkcjonować',
    translation: 'Funcionar',
  ),
  FlashCardsOneDetail(
    word: 'Konsumpcjonizm',
    translation: '(El) consumismo',
  ),
  FlashCardsOneDetail(
    word: 'Piramida',
    translation: '(La) pirámide',
  ),
  FlashCardsOneDetail(
    word: 'Ale się przestraszyłem/am!',
    translation: '¡Qué susto!',
  ),
  FlashCardsOneDetail(
    word: 'Ale mi się nie chce!',
    translation: '¡Qué pereza!',
  ),
  FlashCardsOneDetail(
    word: 'Ale słodki/uroczy!',
    translation: '¡Qué cuco!',
  ),
  FlashCardsOneDetail(
    word: 'Archipelag',
    translation: '(El) archipiélago',
  ),
  FlashCardsOneDetail(
    word: 'Profil',
    translation: '(El) perfil',
  ),
  FlashCardsOneDetail(
    word: 'Uciec bez płacenia (z restauracji)',
    translation: 'Hacer un simpa',
  ),
  FlashCardsOneDetail(
    word: 'Zasnąć',
    translation: 'Dormirse',
  ),
  FlashCardsOneDetail(
    word: 'Przytulać',
    translation: 'Abrazar',
  ),
  FlashCardsOneDetail(
    word: 'Głaskać',
    translation: 'Acariciar',
  ),
  FlashCardsOneDetail(
    word: 'Migrena',
    translation: '(La) migraña',
  ),
  FlashCardsOneDetail(
    word: 'Tenisista/tenisistka',
    translation: '(El/la) tenista',
  ),
  FlashCardsOneDetail(
    word: 'Orkiestra',
    translation: '(La) orquesta',
  ),
  FlashCardsOneDetail(
    word: 'Umowa/kontrakt',
    translation: '(El) contrato',
  ),
  FlashCardsOneDetail(
    word: 'Wanilia',
    translation: '(La) Vainilla',
  ),
  FlashCardsOneDetail(
    word: 'Ale słabo!',
    translation: '¡Qué chungo!',
  ),
  FlashCardsOneDetail(
    word: 'Wyraź swoją opinię!',
    translation: '¡Mójate!',
  ),
];

List<FlashCardsOneDetail> flashCardsOneShuffleList =
    shuffleFlashCardsList(flashCardsDetailOne);
