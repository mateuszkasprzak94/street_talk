// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../situations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SituationModel _$SituationModelFromJson(Map<String, dynamic> json) {
  return _SituationModel.fromJson(json);
}

/// @nodoc
mixin _$SituationModel {
  int get id => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  String get wordTranslation => throw _privateConstructorUsedError;
  String get exampleOne => throw _privateConstructorUsedError;
  String get exampleTwo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SituationModelCopyWith<SituationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SituationModelCopyWith<$Res> {
  factory $SituationModelCopyWith(
          SituationModel value, $Res Function(SituationModel) then) =
      _$SituationModelCopyWithImpl<$Res, SituationModel>;
  @useResult
  $Res call(
      {int id,
      String word,
      String wordTranslation,
      String exampleOne,
      String exampleTwo});
}

/// @nodoc
class _$SituationModelCopyWithImpl<$Res, $Val extends SituationModel>
    implements $SituationModelCopyWith<$Res> {
  _$SituationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? word = null,
    Object? wordTranslation = null,
    Object? exampleOne = null,
    Object? exampleTwo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      wordTranslation: null == wordTranslation
          ? _value.wordTranslation
          : wordTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      exampleOne: null == exampleOne
          ? _value.exampleOne
          : exampleOne // ignore: cast_nullable_to_non_nullable
              as String,
      exampleTwo: null == exampleTwo
          ? _value.exampleTwo
          : exampleTwo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SituationModelImplCopyWith<$Res>
    implements $SituationModelCopyWith<$Res> {
  factory _$$SituationModelImplCopyWith(_$SituationModelImpl value,
          $Res Function(_$SituationModelImpl) then) =
      __$$SituationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String word,
      String wordTranslation,
      String exampleOne,
      String exampleTwo});
}

/// @nodoc
class __$$SituationModelImplCopyWithImpl<$Res>
    extends _$SituationModelCopyWithImpl<$Res, _$SituationModelImpl>
    implements _$$SituationModelImplCopyWith<$Res> {
  __$$SituationModelImplCopyWithImpl(
      _$SituationModelImpl _value, $Res Function(_$SituationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? word = null,
    Object? wordTranslation = null,
    Object? exampleOne = null,
    Object? exampleTwo = null,
  }) {
    return _then(_$SituationModelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      null == wordTranslation
          ? _value.wordTranslation
          : wordTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      null == exampleOne
          ? _value.exampleOne
          : exampleOne // ignore: cast_nullable_to_non_nullable
              as String,
      null == exampleTwo
          ? _value.exampleTwo
          : exampleTwo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SituationModelImpl implements _SituationModel {
  _$SituationModelImpl(this.id, this.word, this.wordTranslation,
      this.exampleOne, this.exampleTwo);

  factory _$SituationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SituationModelImplFromJson(json);

  @override
  final int id;
  @override
  final String word;
  @override
  final String wordTranslation;
  @override
  final String exampleOne;
  @override
  final String exampleTwo;

  @override
  String toString() {
    return 'SituationModel(id: $id, word: $word, wordTranslation: $wordTranslation, exampleOne: $exampleOne, exampleTwo: $exampleTwo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SituationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.wordTranslation, wordTranslation) ||
                other.wordTranslation == wordTranslation) &&
            (identical(other.exampleOne, exampleOne) ||
                other.exampleOne == exampleOne) &&
            (identical(other.exampleTwo, exampleTwo) ||
                other.exampleTwo == exampleTwo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, word, wordTranslation, exampleOne, exampleTwo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SituationModelImplCopyWith<_$SituationModelImpl> get copyWith =>
      __$$SituationModelImplCopyWithImpl<_$SituationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SituationModelImplToJson(
      this,
    );
  }
}

abstract class _SituationModel implements SituationModel {
  factory _SituationModel(
      final int id,
      final String word,
      final String wordTranslation,
      final String exampleOne,
      final String exampleTwo) = _$SituationModelImpl;

  factory _SituationModel.fromJson(Map<String, dynamic> json) =
      _$SituationModelImpl.fromJson;

  @override
  int get id;
  @override
  String get word;
  @override
  String get wordTranslation;
  @override
  String get exampleOne;
  @override
  String get exampleTwo;
  @override
  @JsonKey(ignore: true)
  _$$SituationModelImplCopyWith<_$SituationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
