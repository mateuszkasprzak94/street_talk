// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizQuestionModel _$QuizQuestionModelFromJson(Map<String, dynamic> json) {
  return _QuizQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuizQuestionModel {
  String get category => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<String> get incorrectAnswer => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizQuestionModelCopyWith<QuizQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionModelCopyWith<$Res> {
  factory $QuizQuestionModelCopyWith(
          QuizQuestionModel value, $Res Function(QuizQuestionModel) then) =
      _$QuizQuestionModelCopyWithImpl<$Res, QuizQuestionModel>;
  @useResult
  $Res call(
      {String category,
      String id,
      String question,
      List<String> incorrectAnswer,
      String correctAnswer});
}

/// @nodoc
class _$QuizQuestionModelCopyWithImpl<$Res, $Val extends QuizQuestionModel>
    implements $QuizQuestionModelCopyWith<$Res> {
  _$QuizQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? id = null,
    Object? question = null,
    Object? incorrectAnswer = null,
    Object? correctAnswer = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      incorrectAnswer: null == incorrectAnswer
          ? _value.incorrectAnswer
          : incorrectAnswer // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizQuestionModelImplCopyWith<$Res>
    implements $QuizQuestionModelCopyWith<$Res> {
  factory _$$QuizQuestionModelImplCopyWith(_$QuizQuestionModelImpl value,
          $Res Function(_$QuizQuestionModelImpl) then) =
      __$$QuizQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      String id,
      String question,
      List<String> incorrectAnswer,
      String correctAnswer});
}

/// @nodoc
class __$$QuizQuestionModelImplCopyWithImpl<$Res>
    extends _$QuizQuestionModelCopyWithImpl<$Res, _$QuizQuestionModelImpl>
    implements _$$QuizQuestionModelImplCopyWith<$Res> {
  __$$QuizQuestionModelImplCopyWithImpl(_$QuizQuestionModelImpl _value,
      $Res Function(_$QuizQuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? id = null,
    Object? question = null,
    Object? incorrectAnswer = null,
    Object? correctAnswer = null,
  }) {
    return _then(_$QuizQuestionModelImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      null == incorrectAnswer
          ? _value._incorrectAnswer
          : incorrectAnswer // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$QuizQuestionModelImpl implements _QuizQuestionModel {
  _$QuizQuestionModelImpl(this.category, this.id, this.question,
      final List<String> incorrectAnswer, this.correctAnswer)
      : _incorrectAnswer = incorrectAnswer;

  factory _$QuizQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizQuestionModelImplFromJson(json);

  @override
  final String category;
  @override
  final String id;
  @override
  final String question;
  final List<String> _incorrectAnswer;
  @override
  List<String> get incorrectAnswer {
    if (_incorrectAnswer is EqualUnmodifiableListView) return _incorrectAnswer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incorrectAnswer);
  }

  @override
  final String correctAnswer;

  @override
  String toString() {
    return 'QuizQuestionModel(category: $category, id: $id, question: $question, incorrectAnswer: $incorrectAnswer, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizQuestionModelImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality()
                .equals(other._incorrectAnswer, _incorrectAnswer) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, id, question,
      const DeepCollectionEquality().hash(_incorrectAnswer), correctAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizQuestionModelImplCopyWith<_$QuizQuestionModelImpl> get copyWith =>
      __$$QuizQuestionModelImplCopyWithImpl<_$QuizQuestionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuizQuestionModel implements QuizQuestionModel {
  factory _QuizQuestionModel(
      final String category,
      final String id,
      final String question,
      final List<String> incorrectAnswer,
      final String correctAnswer) = _$QuizQuestionModelImpl;

  factory _QuizQuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuizQuestionModelImpl.fromJson;

  @override
  String get category;
  @override
  String get id;
  @override
  String get question;
  @override
  List<String> get incorrectAnswer;
  @override
  String get correctAnswer;
  @override
  @JsonKey(ignore: true)
  _$$QuizQuestionModelImplCopyWith<_$QuizQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
