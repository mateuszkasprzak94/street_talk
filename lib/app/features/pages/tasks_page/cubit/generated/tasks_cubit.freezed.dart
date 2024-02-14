// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tasks_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksState {
  List<ExerciseQuestionModel> get exerciseQuestion =>
      throw _privateConstructorUsedError;
  PageController? get controllerTaskPage => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
  @useResult
  $Res call(
      {List<ExerciseQuestionModel> exerciseQuestion,
      PageController? controllerTaskPage,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseQuestion = null,
    Object? controllerTaskPage = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseQuestion: null == exerciseQuestion
          ? _value.exerciseQuestion
          : exerciseQuestion // ignore: cast_nullable_to_non_nullable
              as List<ExerciseQuestionModel>,
      controllerTaskPage: freezed == controllerTaskPage
          ? _value.controllerTaskPage
          : controllerTaskPage // ignore: cast_nullable_to_non_nullable
              as PageController?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksStateImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksStateImplCopyWith(
          _$TasksStateImpl value, $Res Function(_$TasksStateImpl) then) =
      __$$TasksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ExerciseQuestionModel> exerciseQuestion,
      PageController? controllerTaskPage,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$TasksStateImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateImpl>
    implements _$$TasksStateImplCopyWith<$Res> {
  __$$TasksStateImplCopyWithImpl(
      _$TasksStateImpl _value, $Res Function(_$TasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseQuestion = null,
    Object? controllerTaskPage = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TasksStateImpl(
      exerciseQuestion: null == exerciseQuestion
          ? _value._exerciseQuestion
          : exerciseQuestion // ignore: cast_nullable_to_non_nullable
              as List<ExerciseQuestionModel>,
      controllerTaskPage: freezed == controllerTaskPage
          ? _value.controllerTaskPage
          : controllerTaskPage // ignore: cast_nullable_to_non_nullable
              as PageController?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TasksStateImpl implements _TasksState {
  _$TasksStateImpl(
      {final List<ExerciseQuestionModel> exerciseQuestion = const [],
      this.controllerTaskPage,
      this.status = Status.initial,
      this.errorMessage})
      : _exerciseQuestion = exerciseQuestion;

  final List<ExerciseQuestionModel> _exerciseQuestion;
  @override
  @JsonKey()
  List<ExerciseQuestionModel> get exerciseQuestion {
    if (_exerciseQuestion is EqualUnmodifiableListView)
      return _exerciseQuestion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exerciseQuestion);
  }

  @override
  final PageController? controllerTaskPage;
  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TasksState(exerciseQuestion: $exerciseQuestion, controllerTaskPage: $controllerTaskPage, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateImpl &&
            const DeepCollectionEquality()
                .equals(other._exerciseQuestion, _exerciseQuestion) &&
            (identical(other.controllerTaskPage, controllerTaskPage) ||
                other.controllerTaskPage == controllerTaskPage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exerciseQuestion),
      controllerTaskPage,
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStateImplCopyWith<_$TasksStateImpl> get copyWith =>
      __$$TasksStateImplCopyWithImpl<_$TasksStateImpl>(this, _$identity);
}

abstract class _TasksState implements TasksState {
  factory _TasksState(
      {final List<ExerciseQuestionModel> exerciseQuestion,
      final PageController? controllerTaskPage,
      final Status status,
      final String? errorMessage}) = _$TasksStateImpl;

  @override
  List<ExerciseQuestionModel> get exerciseQuestion;
  @override
  PageController? get controllerTaskPage;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TasksStateImplCopyWith<_$TasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
