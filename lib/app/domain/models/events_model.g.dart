// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventsModelImpl _$$EventsModelImplFromJson(Map<String, dynamic> json) =>
    _$EventsModelImpl(
      json['category'] as String,
      json['location'] as String,
      json['date'] as String,
      json['key_features'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$$EventsModelImplToJson(_$EventsModelImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'location': instance.location,
      'date': instance.date,
      'key_features': instance.keyFeatures,
      'description': instance.description,
    };
