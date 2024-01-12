// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emotions_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmotionsNameModel _$EmotionsNameModelFromJson(Map<String, dynamic> json) {
  return _EmotionsNameModel.fromJson(json);
}

/// @nodoc
mixin _$EmotionsNameModel {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get emotion => throw _privateConstructorUsedError;
  @JsonKey(name: 'emotion_translation')
  String get emotionTranslation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmotionsNameModelCopyWith<EmotionsNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionsNameModelCopyWith<$Res> {
  factory $EmotionsNameModelCopyWith(
          EmotionsNameModel value, $Res Function(EmotionsNameModel) then) =
      _$EmotionsNameModelCopyWithImpl<$Res, EmotionsNameModel>;
  @useResult
  $Res call(
      {int id,
      String image,
      String emotion,
      @JsonKey(name: 'emotion_translation') String emotionTranslation});
}

/// @nodoc
class _$EmotionsNameModelCopyWithImpl<$Res, $Val extends EmotionsNameModel>
    implements $EmotionsNameModelCopyWith<$Res> {
  _$EmotionsNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? emotion = null,
    Object? emotionTranslation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      emotion: null == emotion
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as String,
      emotionTranslation: null == emotionTranslation
          ? _value.emotionTranslation
          : emotionTranslation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmotionsNameModelImplCopyWith<$Res>
    implements $EmotionsNameModelCopyWith<$Res> {
  factory _$$EmotionsNameModelImplCopyWith(_$EmotionsNameModelImpl value,
          $Res Function(_$EmotionsNameModelImpl) then) =
      __$$EmotionsNameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String image,
      String emotion,
      @JsonKey(name: 'emotion_translation') String emotionTranslation});
}

/// @nodoc
class __$$EmotionsNameModelImplCopyWithImpl<$Res>
    extends _$EmotionsNameModelCopyWithImpl<$Res, _$EmotionsNameModelImpl>
    implements _$$EmotionsNameModelImplCopyWith<$Res> {
  __$$EmotionsNameModelImplCopyWithImpl(_$EmotionsNameModelImpl _value,
      $Res Function(_$EmotionsNameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? emotion = null,
    Object? emotionTranslation = null,
  }) {
    return _then(_$EmotionsNameModelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      null == emotion
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as String,
      null == emotionTranslation
          ? _value.emotionTranslation
          : emotionTranslation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmotionsNameModelImpl implements _EmotionsNameModel {
  _$EmotionsNameModelImpl(this.id, this.image, this.emotion,
      @JsonKey(name: 'emotion_translation') this.emotionTranslation);

  factory _$EmotionsNameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmotionsNameModelImplFromJson(json);

  @override
  final int id;
  @override
  final String image;
  @override
  final String emotion;
  @override
  @JsonKey(name: 'emotion_translation')
  final String emotionTranslation;

  @override
  String toString() {
    return 'EmotionsNameModel(id: $id, image: $image, emotion: $emotion, emotionTranslation: $emotionTranslation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmotionsNameModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.emotion, emotion) || other.emotion == emotion) &&
            (identical(other.emotionTranslation, emotionTranslation) ||
                other.emotionTranslation == emotionTranslation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, image, emotion, emotionTranslation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmotionsNameModelImplCopyWith<_$EmotionsNameModelImpl> get copyWith =>
      __$$EmotionsNameModelImplCopyWithImpl<_$EmotionsNameModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmotionsNameModelImplToJson(
      this,
    );
  }
}

abstract class _EmotionsNameModel implements EmotionsNameModel {
  factory _EmotionsNameModel(
      final int id,
      final String image,
      final String emotion,
      @JsonKey(name: 'emotion_translation')
      final String emotionTranslation) = _$EmotionsNameModelImpl;

  factory _EmotionsNameModel.fromJson(Map<String, dynamic> json) =
      _$EmotionsNameModelImpl.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  String get emotion;
  @override
  @JsonKey(name: 'emotion_translation')
  String get emotionTranslation;
  @override
  @JsonKey(ignore: true)
  _$$EmotionsNameModelImplCopyWith<_$EmotionsNameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
