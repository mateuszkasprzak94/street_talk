class StreetModel {
  const StreetModel({
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

  StreetModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        word = json['word'],
        wordTranslation = json['word_translation'],
        exampleOne = json['example_one'],
        exampleTwo = json['example_two'];
}
