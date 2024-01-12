// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotions_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmotionsContentModel _$EmotionsContentModelFromJson(
        Map<String, dynamic> json) =>
    EmotionsContentModel(
      id: json['id'] as int,
      emotionId: json['emotion_id'] as int,
      word: json['word'] as String,
      wordTranslation: json['word_translation'] as String,
      exampleOne: json['example_one'] as String,
      exampleTwo: json['example_two'] as String,
    );

Map<String, dynamic> _$EmotionsContentModelToJson(
        EmotionsContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emotion_id': instance.emotionId,
      'word': instance.word,
      'word_translation': instance.wordTranslation,
      'example_one': instance.exampleOne,
      'example_two': instance.exampleTwo,
    };
