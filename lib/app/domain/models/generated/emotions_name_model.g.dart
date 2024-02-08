// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../emotions_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmotionsNameModelImpl _$$EmotionsNameModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmotionsNameModelImpl(
      json['id'] as int,
      json['image'] as String,
      json['emotion'] as String,
      json['emotion_translation'] as String,
    );

Map<String, dynamic> _$$EmotionsNameModelImplToJson(
        _$EmotionsNameModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'emotion': instance.emotion,
      'emotion_translation': instance.emotionTranslation,
    };
