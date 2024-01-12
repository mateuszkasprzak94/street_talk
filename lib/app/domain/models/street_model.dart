import 'package:json_annotation/json_annotation.dart';

part 'street_model.g.dart';

@JsonSerializable()
class StreetModel {
  const StreetModel({
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

  factory StreetModel.fromJson(Map<String, dynamic> json) =>
      _$StreetModelFromJson(json);

  Map<String, dynamic> toJson() => _$StreetModelToJson(this);
}
