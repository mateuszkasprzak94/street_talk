class EmotionsNameModel {
  const EmotionsNameModel({
    required this.id,
    required this.image,
    required this.emotion,
    required this.emotionTranslation,
  });

  final int id;
  final String image;
  final String emotion;
  final String emotionTranslation;

  EmotionsNameModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        image = json['image'],
        emotion = json['emotion'],
        emotionTranslation = json['emotion_translation'];
}
