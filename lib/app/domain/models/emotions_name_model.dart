import 'package:json_annotation/json_annotation.dart';

part 'emotions_name_model.g.dart';

@JsonSerializable()
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

  @JsonKey(name: 'emotion_translation')
  final String emotionTranslation;

  factory EmotionsNameModel.fromJson(Map<String, dynamic> json) =>
      _$EmotionsNameModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmotionsNameModelToJson(this);
}
