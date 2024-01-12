// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StreetModel _$StreetModelFromJson(Map<String, dynamic> json) => StreetModel(
      id: json['id'] as int,
      word: json['word'] as String,
      wordTranslation: json['word_translation'] as String,
      exampleOne: json['example_one'] as String,
      exampleTwo: json['example_two'] as String,
    );

Map<String, dynamic> _$StreetModelToJson(StreetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'word_translation': instance.wordTranslation,
      'example_one': instance.exampleOne,
      'example_two': instance.exampleTwo,
    };
