import 'package:json_annotation/json_annotation.dart';

part 'emotions_content_model.g.dart';

@JsonSerializable()
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

  @JsonKey(name: 'emotion_id')
  final int emotionId;

  final String word;

  @JsonKey(name: 'word_translation')
  final String wordTranslation;

  @JsonKey(name: 'example_one')
  final String exampleOne;

  @JsonKey(name: 'example_two')
  final String exampleTwo;

  factory EmotionsContentModel.fromJson(Map<String, dynamic> json) =>
      _$EmotionsContentModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmotionsContentModelToJson(this);
}
