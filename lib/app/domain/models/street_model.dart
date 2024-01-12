import 'package:freezed_annotation/freezed_annotation.dart';

part 'street_model.freezed.dart';
part 'street_model.g.dart';

@freezed
class StreetModel with _$StreetModel {
  factory StreetModel(
    int id,
    String word,
    @JsonKey(name: 'word_translation') String wordTranslation,
    @JsonKey(name: 'example_one') String exampleOne,
    @JsonKey(name: 'example_two') String exampleTwo,
  ) = _StreetModel;

  factory StreetModel.fromJson(Map<String, dynamic> json) =>
      _$StreetModelFromJson(json);
}
