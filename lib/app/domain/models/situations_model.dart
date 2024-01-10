class SituationModel {
  const SituationModel({
    required this.id,
    required this.word,
    required this.wordTranslation,
    required this.exampleOne,
    required this.exampleTwo,
  });

  final int id;
  final String word;
  final String wordTranslation;
  final String exampleOne;
  final String exampleTwo;

  SituationModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        word = json['word'],
        wordTranslation = json['word_translation'],
        exampleOne = json['example_one'],
        exampleTwo = json['example_two'];
}
