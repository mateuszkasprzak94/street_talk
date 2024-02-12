class FlashCardsThreeDetail {
  FlashCardsThreeDetail({
    required this.word,
    required this.translation,
  });

  final String word;
  final String translation;
}

List<FlashCardsThreeDetail> shuffleFlashCardsList(
    List<FlashCardsThreeDetail> list) {
  List<FlashCardsThreeDetail> shuffleList = List.from(list);
  shuffleList.shuffle();
  return shuffleList;
}

final List<FlashCardsThreeDetail> flashCardsDetailThree = [
  FlashCardsThreeDetail(
    word: 'Super/fajne',
    translation: 'Chachi',
  ),
  FlashCardsThreeDetail(
    word: 'Ze słyszenia',
    translation: 'De oídas ',
  ),
  FlashCardsThreeDetail(
    word: 'Zakwasy',
    translation: 'Agujetas',
  ),
  FlashCardsThreeDetail(
    word: 'Pochwała',
    translation: '(El) encomio ',
  ),
  FlashCardsThreeDetail(
    word: 'Okrucieństwo',
    translation: '(La) ferocidad ',
  ),
  FlashCardsThreeDetail(
    word: 'Potwierdzam ',
    translation: 'Doy fe ',
  ),
  FlashCardsThreeDetail(
    word: 'Taa jasne',
    translation: '¡Y una leche! ',
  ),
  FlashCardsThreeDetail(
    word: 'Mroczny',
    translation: 'Tenebroso',
  ),
  FlashCardsThreeDetail(
    word: 'Głupiec',
    translation: '(El) necio ',
  ),
  FlashCardsThreeDetail(
    word: 'Spędzić super czas/świetnie się bawić',
    translation: 'Pasarlo teta ',
  ),
  FlashCardsThreeDetail(
    word: 'Nic specjalnego/ takie sobie',
    translation: 'Sin más ',
  ),
  FlashCardsThreeDetail(
    word: 'Pozorant',
    translation: '(El) posturero ',
  ),
  FlashCardsThreeDetail(
    word: 'Twerkować',
    translation: 'Perrear ',
  ),
  FlashCardsThreeDetail(
    word: '(zakładając) z góry',
    translation: 'A priori ',
  ),
  FlashCardsThreeDetail(
    word: 'Początkujący',
    translation: 'Incipiente ',
  ),
  FlashCardsThreeDetail(
    word: 'Zajebisty',
    translation: 'Cojonudo ',
  ),
  FlashCardsThreeDetail(
    word: 'Nieprzyjemna sytuacja/duży problem',
    translation: '(El) marronazo ',
  ),
  FlashCardsThreeDetail(
    word: 'Mi to obojętne/mam to gdzieś',
    translation: 'Me la pela ',
  ),
  FlashCardsThreeDetail(
    word: 'Kłótnia',
    translation: '(La) chamusquina ',
  ),
  FlashCardsThreeDetail(
    word: 'Gruchot/grat',
    translation: '(El) cacharro ',
  ),
  FlashCardsThreeDetail(
    word: 'Frajer',
    translation: '(El) pringado ',
  ),
  FlashCardsThreeDetail(
    word: 'Lizus',
    translation: 'El lameculos ',
  ),
  FlashCardsThreeDetail(
    word: 'Gratka/okazja',
    translation: 'El chollo ',
  ),
  FlashCardsThreeDetail(
    word: 'Podrywać/flirtować',
    translation: 'Ligar ',
  ),
  FlashCardsThreeDetail(
    word: 'Szybki numerek',
    translation: '(El) quiquis',
  ),
  FlashCardsThreeDetail(
    word: 'Euro',
    translation: '(El) pavo ',
  ),
  FlashCardsThreeDetail(
    word: 'Śpioch ',
    translation: '(El) dormilón ',
  ),
  FlashCardsThreeDetail(
    word: 'Mądrala',
    translation: '(El) sabelotodo ',
  ),
  FlashCardsThreeDetail(
    word: 'Pleciuch/gaduła',
    translation: '(El) bocachancla ',
  ),
  FlashCardsThreeDetail(
    word: 'Przyzwoitka ',
    translation: '(El) sujetavelas ',
  ),
  FlashCardsThreeDetail(
    word: 'Ktoś kto jest w gorącej wodzie kąpany ',
    translation: '(El) cagaprisas ',
  ),
  FlashCardsThreeDetail(
    word: 'Korkociąg ',
    translation: '(El) sacacorchos ',
  ),
  FlashCardsThreeDetail(
    word: 'Suszarka do naczyń',
    translation: '(El) escurreplatos ',
  ),
];

List<FlashCardsThreeDetail> flashCardsThreeShuffleList =
    shuffleFlashCardsList(flashCardsDetailThree);
