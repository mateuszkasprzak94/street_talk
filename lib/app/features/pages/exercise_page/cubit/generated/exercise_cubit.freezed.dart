// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../exercise_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExerciseState {
  PageController? get controllerTaskPage => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseStateCopyWith<ExerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseStateCopyWith<$Res> {
  factory $ExerciseStateCopyWith(
          ExerciseState value, $Res Function(ExerciseState) then) =
      _$ExerciseStateCopyWithImpl<$Res, ExerciseState>;
  @useResult
  $Res call(
      {PageController? controllerTaskPage,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$ExerciseStateCopyWithImpl<$Res, $Val extends ExerciseState>
    implements $ExerciseStateCopyWith<$Res> {
  _$ExerciseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllerTaskPage = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$ExerciseStateImplCopyWith<$Res>
    implements $ExerciseStateCopyWith<$Res> {
  factory _$$ExerciseStateImplCopyWith(
          _$ExerciseStateImpl value, $Res Function(_$ExerciseStateImpl) then) =
      __$$ExerciseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageController? controllerTaskPage,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$ExerciseStateImplCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res, _$ExerciseStateImpl>
    implements _$$ExerciseStateImplCopyWith<$Res> {
  __$$ExerciseStateImplCopyWithImpl(
      _$ExerciseStateImpl _value, $Res Function(_$ExerciseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllerTaskPage = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ExerciseStateImpl(
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

class _$ExerciseStateImpl implements _ExerciseState {
  _$ExerciseStateImpl(
      {this.controllerTaskPage,
      this.status = Status.initial,
      this.errorMessage});

  @override
  final PageController? controllerTaskPage;
  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ExerciseState(controllerTaskPage: $controllerTaskPage, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseStateImpl &&
            (identical(other.controllerTaskPage, controllerTaskPage) ||
                other.controllerTaskPage == controllerTaskPage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, controllerTaskPage, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseStateImplCopyWith<_$ExerciseStateImpl> get copyWith =>
      __$$ExerciseStateImplCopyWithImpl<_$ExerciseStateImpl>(this, _$identity);
}

abstract class _ExerciseState implements ExerciseState {
  factory _ExerciseState(
      {final PageController? controllerTaskPage,
      final Status status,
      final String? errorMessage}) = _$ExerciseStateImpl;

  @override
  PageController? get controllerTaskPage;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseStateImplCopyWith<_$ExerciseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
