import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/situations_model.freezed.dart';
part 'generated/situations_model.g.dart';

@freezed
class SituationModel with _$SituationModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory SituationModel(
    int id,
    String word,
    String wordTranslation,
    String exampleOne,
    String exampleTwo,
  ) = _SituationModel;

  factory SituationModel.fromJson(Map<String, dynamic> json) =>
      _$SituationModelFromJson(json);
}
