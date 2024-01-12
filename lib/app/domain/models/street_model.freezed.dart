// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreetModel _$StreetModelFromJson(Map<String, dynamic> json) {
  return _StreetModel.fromJson(json);
}

/// @nodoc
mixin _$StreetModel {
  int get id => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  String get wordTranslation => throw _privateConstructorUsedError;
  String get exampleOne => throw _privateConstructorUsedError;
  String get exampleTwo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreetModelCopyWith<StreetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreetModelCopyWith<$Res> {
  factory $StreetModelCopyWith(
          StreetModel value, $Res Function(StreetModel) then) =
      _$StreetModelCopyWithImpl<$Res, StreetModel>;
  @useResult
  $Res call(
      {int id,
      String word,
      String wordTranslation,
      String exampleOne,
      String exampleTwo});
}

/// @nodoc
class _$StreetModelCopyWithImpl<$Res, $Val extends StreetModel>
    implements $StreetModelCopyWith<$Res> {
  _$StreetModelCopyWithImpl(this._value, this._then);

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
abstract class _$$StreetModelImplCopyWith<$Res>
    implements $StreetModelCopyWith<$Res> {
  factory _$$StreetModelImplCopyWith(
          _$StreetModelImpl value, $Res Function(_$StreetModelImpl) then) =
      __$$StreetModelImplCopyWithImpl<$Res>;
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
class __$$StreetModelImplCopyWithImpl<$Res>
    extends _$StreetModelCopyWithImpl<$Res, _$StreetModelImpl>
    implements _$$StreetModelImplCopyWith<$Res> {
  __$$StreetModelImplCopyWithImpl(
      _$StreetModelImpl _value, $Res Function(_$StreetModelImpl) _then)
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
    return _then(_$StreetModelImpl(
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
class _$StreetModelImpl implements _StreetModel {
  _$StreetModelImpl(this.id, this.word, this.wordTranslation, this.exampleOne,
      this.exampleTwo);

  factory _$StreetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreetModelImplFromJson(json);

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
    return 'StreetModel(id: $id, word: $word, wordTranslation: $wordTranslation, exampleOne: $exampleOne, exampleTwo: $exampleTwo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreetModelImpl &&
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
  _$$StreetModelImplCopyWith<_$StreetModelImpl> get copyWith =>
      __$$StreetModelImplCopyWithImpl<_$StreetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreetModelImplToJson(
      this,
    );
  }
}

abstract class _StreetModel implements StreetModel {
  factory _StreetModel(
      final int id,
      final String word,
      final String wordTranslation,
      final String exampleOne,
      final String exampleTwo) = _$StreetModelImpl;

  factory _StreetModel.fromJson(Map<String, dynamic> json) =
      _$StreetModelImpl.fromJson;

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
  _$$StreetModelImplCopyWith<_$StreetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
