import 'package:json_annotation/json_annotation.dart';

part 'situations_model.g.dart';

@JsonSerializable()
class SituationModel {
  const SituationModel({
    required this.id,
    required this.word,
    required this.wordTranslation,
    required this.exampleOne,
    required this.exampleTwo,
  });

  final int id;
  final String word;

  @JsonKey(name: 'word_translation')
  final String wordTranslation;

  @JsonKey(name: 'example_one')
  final String exampleOne;

  @JsonKey(name: 'example_two')
  final String exampleTwo;

  factory SituationModel.fromJson(Map<String, dynamic> json) =>
      _$SituationModelFromJson(json);

  Map<String, dynamic> toJson() => _$SituationModelToJson(this);
}
