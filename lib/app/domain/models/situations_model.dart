import 'package:freezed_annotation/freezed_annotation.dart';

part 'situations_model.freezed.dart';
part 'situations_model.g.dart';

@freezed
class SituationModel with _$SituationModel {
  factory SituationModel(
    int id,
    String word,
    @JsonKey(name: 'word_translation') String wordTranslation,
    @JsonKey(name: 'example_one') String exampleOne,
    @JsonKey(name: 'example_two') String exampleTwo,
  ) = _SituationModel;

  factory SituationModel.fromJson(Map<String, dynamic> json) =>
      _$SituationModelFromJson(json);
}
