import 'package:freezed_annotation/freezed_annotation.dart';

part 'emotions_content_model.freezed.dart';
part 'emotions_content_model.g.dart';

@freezed
class EmotionsContentModel with _$EmotionsContentModel {
  factory EmotionsContentModel(
    int id,
    @JsonKey(name: 'emotion_id') int emotionId,
    String word,
    @JsonKey(name: 'word_translation') String wordTranslation,
    @JsonKey(name: 'example_one') String exampleOne,
    @JsonKey(name: 'example_two') String exampleTwo,
  ) = _EmotionsContentModel;

  factory EmotionsContentModel.fromJson(Map<String, dynamic> json) =>
      _$EmotionsContentModelFromJson(json);
}
