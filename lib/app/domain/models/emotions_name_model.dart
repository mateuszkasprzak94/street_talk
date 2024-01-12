import 'package:freezed_annotation/freezed_annotation.dart';

part 'emotions_name_model.freezed.dart';
part 'emotions_name_model.g.dart';

@freezed
class EmotionsNameModel with _$EmotionsNameModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory EmotionsNameModel(
    int id,
    String image,
    String emotion,
    String emotionTranslation,
  ) = _EmotionsNameModel;

  factory EmotionsNameModel.fromJson(Map<String, dynamic> json) =>
      _$EmotionsNameModelFromJson(json);
}
