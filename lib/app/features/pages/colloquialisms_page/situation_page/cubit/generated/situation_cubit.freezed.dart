// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../situation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SituationState {
  List<SituationModel> get results => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SituationStateCopyWith<SituationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SituationStateCopyWith<$Res> {
  factory $SituationStateCopyWith(
          SituationState value, $Res Function(SituationState) then) =
      _$SituationStateCopyWithImpl<$Res, SituationState>;
  @useResult
  $Res call(
      {List<SituationModel> results, Status status, String? errorMessage});
}

/// @nodoc
class _$SituationStateCopyWithImpl<$Res, $Val extends SituationState>
    implements $SituationStateCopyWith<$Res> {
  _$SituationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SituationModel>,
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
abstract class _$$SituationStateImplCopyWith<$Res>
    implements $SituationStateCopyWith<$Res> {
  factory _$$SituationStateImplCopyWith(_$SituationStateImpl value,
          $Res Function(_$SituationStateImpl) then) =
      __$$SituationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SituationModel> results, Status status, String? errorMessage});
}

/// @nodoc
class __$$SituationStateImplCopyWithImpl<$Res>
    extends _$SituationStateCopyWithImpl<$Res, _$SituationStateImpl>
    implements _$$SituationStateImplCopyWith<$Res> {
  __$$SituationStateImplCopyWithImpl(
      _$SituationStateImpl _value, $Res Function(_$SituationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SituationStateImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SituationModel>,
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

class _$SituationStateImpl implements _SituationState {
  _$SituationStateImpl(
      {final List<SituationModel> results = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _results = results;

  final List<SituationModel> _results;
  @override
  @JsonKey()
  List<SituationModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SituationState(results: $results, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SituationStateImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_results), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SituationStateImplCopyWith<_$SituationStateImpl> get copyWith =>
      __$$SituationStateImplCopyWithImpl<_$SituationStateImpl>(
          this, _$identity);
}

abstract class _SituationState implements SituationState {
  factory _SituationState(
      {final List<SituationModel> results,
      final Status status,
      final String? errorMessage}) = _$SituationStateImpl;

  @override
  List<SituationModel> get results;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SituationStateImplCopyWith<_$SituationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
