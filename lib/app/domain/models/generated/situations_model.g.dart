// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../situations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SituationModelImpl _$$SituationModelImplFromJson(Map<String, dynamic> json) =>
    _$SituationModelImpl(
      json['id'] as int,
      json['word'] as String,
      json['word_translation'] as String,
      json['example_one'] as String,
      json['example_two'] as String,
    );

Map<String, dynamic> _$$SituationModelImplToJson(
        _$SituationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'word_translation': instance.wordTranslation,
      'example_one': instance.exampleOne,
      'example_two': instance.exampleTwo,
    };
