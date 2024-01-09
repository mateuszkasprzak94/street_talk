class EmotionsContentModel {
  const EmotionsContentModel({
    required this.id,
    required this.emotionId,
    required this.word,
    required this.wordTranslation,
    required this.exampleOne,
    required this.exampleTwo,
  });

  final int id;
  final int emotionId;
  final String word;
  final String wordTranslation;
  final String exampleOne;
  final String exampleTwo;

  EmotionsContentModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        emotionId = json['emotion_id'],
        word = json['word'],
        wordTranslation = json['word_translation'],
        exampleOne = json['example_one'],
        exampleTwo = json['example_two'];
}
