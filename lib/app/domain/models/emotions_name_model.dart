import 'package:freezed_annotation/freezed_annotation.dart';

part 'emotions_name_model.freezed.dart';
part 'emotions_name_model.g.dart';

@freezed
class EmotionsNameModel with _$EmotionsNameModel {
  factory EmotionsNameModel(
    int id,
    String image,
    String emotion,
    @JsonKey(name: 'emotion_translation') String emotionTranslation,
  ) = _EmotionsNameModel;

  factory EmotionsNameModel.fromJson(Map<String, dynamic> json) =>
      _$EmotionsNameModelFromJson(json);
}
