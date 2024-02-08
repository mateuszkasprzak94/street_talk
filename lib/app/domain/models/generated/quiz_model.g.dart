// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizQuestionModelImpl _$$QuizQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizQuestionModelImpl(
      json['category'] as String,
      json['id'] as String,
      json['question'] as String,
      (json['incorrect_answer'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['correct_answer'] as String,
    );

Map<String, dynamic> _$$QuizQuestionModelImplToJson(
        _$QuizQuestionModelImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'id': instance.id,
      'question': instance.question,
      'incorrect_answer': instance.incorrectAnswer,
      'correct_answer': instance.correctAnswer,
    };
