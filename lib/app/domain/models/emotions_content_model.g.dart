// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotions_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmotionsContentModelImpl _$$EmotionsContentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmotionsContentModelImpl(
      json['id'] as int,
      json['emotion_id'] as int,
      json['word'] as String,
      json['word_translation'] as String,
      json['example_one'] as String,
      json['example_two'] as String,
    );

Map<String, dynamic> _$$EmotionsContentModelImplToJson(
        _$EmotionsContentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emotion_id': instance.emotionId,
      'word': instance.word,
      'word_translation': instance.wordTranslation,
      'example_one': instance.exampleOne,
      'example_two': instance.exampleTwo,
    };
