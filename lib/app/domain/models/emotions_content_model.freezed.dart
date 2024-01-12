// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emotions_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmotionsContentModel _$EmotionsContentModelFromJson(Map<String, dynamic> json) {
  return _EmotionsContentModel.fromJson(json);
}

/// @nodoc
mixin _$EmotionsContentModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'emotion_id')
  int get emotionId => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  @JsonKey(name: 'word_translation')
  String get wordTranslation => throw _privateConstructorUsedError;
  @JsonKey(name: 'example_one')
  String get exampleOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'example_two')
  String get exampleTwo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmotionsContentModelCopyWith<EmotionsContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionsContentModelCopyWith<$Res> {
  factory $EmotionsContentModelCopyWith(EmotionsContentModel value,
          $Res Function(EmotionsContentModel) then) =
      _$EmotionsContentModelCopyWithImpl<$Res, EmotionsContentModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'emotion_id') int emotionId,
      String word,
      @JsonKey(name: 'word_translation') String wordTranslation,
      @JsonKey(name: 'example_one') String exampleOne,
      @JsonKey(name: 'example_two') String exampleTwo});
}

/// @nodoc
class _$EmotionsContentModelCopyWithImpl<$Res,
        $Val extends EmotionsContentModel>
    implements $EmotionsContentModelCopyWith<$Res> {
  _$EmotionsContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emotionId = null,
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
      emotionId: null == emotionId
          ? _value.emotionId
          : emotionId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EmotionsContentModelImplCopyWith<$Res>
    implements $EmotionsContentModelCopyWith<$Res> {
  factory _$$EmotionsContentModelImplCopyWith(_$EmotionsContentModelImpl value,
          $Res Function(_$EmotionsContentModelImpl) then) =
      __$$EmotionsContentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'emotion_id') int emotionId,
      String word,
      @JsonKey(name: 'word_translation') String wordTranslation,
      @JsonKey(name: 'example_one') String exampleOne,
      @JsonKey(name: 'example_two') String exampleTwo});
}

/// @nodoc
class __$$EmotionsContentModelImplCopyWithImpl<$Res>
    extends _$EmotionsContentModelCopyWithImpl<$Res, _$EmotionsContentModelImpl>
    implements _$$EmotionsContentModelImplCopyWith<$Res> {
  __$$EmotionsContentModelImplCopyWithImpl(_$EmotionsContentModelImpl _value,
      $Res Function(_$EmotionsContentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emotionId = null,
    Object? word = null,
    Object? wordTranslation = null,
    Object? exampleOne = null,
    Object? exampleTwo = null,
  }) {
    return _then(_$EmotionsContentModelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == emotionId
          ? _value.emotionId
          : emotionId // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$EmotionsContentModelImpl implements _EmotionsContentModel {
  _$EmotionsContentModelImpl(
      this.id,
      @JsonKey(name: 'emotion_id') this.emotionId,
      this.word,
      @JsonKey(name: 'word_translation') this.wordTranslation,
      @JsonKey(name: 'example_one') this.exampleOne,
      @JsonKey(name: 'example_two') this.exampleTwo);

  factory _$EmotionsContentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmotionsContentModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'emotion_id')
  final int emotionId;
  @override
  final String word;
  @override
  @JsonKey(name: 'word_translation')
  final String wordTranslation;
  @override
  @JsonKey(name: 'example_one')
  final String exampleOne;
  @override
  @JsonKey(name: 'example_two')
  final String exampleTwo;

  @override
  String toString() {
    return 'EmotionsContentModel(id: $id, emotionId: $emotionId, word: $word, wordTranslation: $wordTranslation, exampleOne: $exampleOne, exampleTwo: $exampleTwo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmotionsContentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.emotionId, emotionId) ||
                other.emotionId == emotionId) &&
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
  int get hashCode => Object.hash(runtimeType, id, emotionId, word,
      wordTranslation, exampleOne, exampleTwo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmotionsContentModelImplCopyWith<_$EmotionsContentModelImpl>
      get copyWith =>
          __$$EmotionsContentModelImplCopyWithImpl<_$EmotionsContentModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmotionsContentModelImplToJson(
      this,
    );
  }
}

abstract class _EmotionsContentModel implements EmotionsContentModel {
  factory _EmotionsContentModel(
          final int id,
          @JsonKey(name: 'emotion_id') final int emotionId,
          final String word,
          @JsonKey(name: 'word_translation') final String wordTranslation,
          @JsonKey(name: 'example_one') final String exampleOne,
          @JsonKey(name: 'example_two') final String exampleTwo) =
      _$EmotionsContentModelImpl;

  factory _EmotionsContentModel.fromJson(Map<String, dynamic> json) =
      _$EmotionsContentModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'emotion_id')
  int get emotionId;
  @override
  String get word;
  @override
  @JsonKey(name: 'word_translation')
  String get wordTranslation;
  @override
  @JsonKey(name: 'example_one')
  String get exampleOne;
  @override
  @JsonKey(name: 'example_two')
  String get exampleTwo;
  @override
  @JsonKey(ignore: true)
  _$$EmotionsContentModelImplCopyWith<_$EmotionsContentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
