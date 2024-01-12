// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotions_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmotionsNameModel _$EmotionsNameModelFromJson(Map<String, dynamic> json) =>
    EmotionsNameModel(
      id: json['id'] as int,
      image: json['image'] as String,
      emotion: json['emotion'] as String,
      emotionTranslation: json['emotion_translation'] as String,
    );

Map<String, dynamic> _$EmotionsNameModelToJson(EmotionsNameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'emotion': instance.emotion,
      'emotion_translation': instance.emotionTranslation,
    };
