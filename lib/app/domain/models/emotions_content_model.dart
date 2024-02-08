import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/emotions_content_model.freezed.dart';
part 'generated/emotions_content_model.g.dart';

@freezed
class EmotionsContentModel with _$EmotionsContentModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory EmotionsContentModel(
    int id,
    int emotionId,
    String word,
    String wordTranslation,
    String exampleOne,
    String exampleTwo,
  ) = _EmotionsContentModel;

  factory EmotionsContentModel.fromJson(Map<String, dynamic> json) =>
      _$EmotionsContentModelFromJson(json);
}
