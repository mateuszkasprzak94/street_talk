import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/street_model.freezed.dart';
part 'generated/street_model.g.dart';

@freezed
class StreetModel with _$StreetModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory StreetModel(
    int id,
    String word,
    String wordTranslation,
    String exampleOne,
    String exampleTwo,
  ) = _StreetModel;

  factory StreetModel.fromJson(Map<String, dynamic> json) =>
      _$StreetModelFromJson(json);
}
