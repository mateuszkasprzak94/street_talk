// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../street_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StreetState {
  List<StreetModel> get results => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StreetStateCopyWith<StreetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreetStateCopyWith<$Res> {
  factory $StreetStateCopyWith(
          StreetState value, $Res Function(StreetState) then) =
      _$StreetStateCopyWithImpl<$Res, StreetState>;
  @useResult
  $Res call({List<StreetModel> results, Status status, String? errorMessage});
}

/// @nodoc
class _$StreetStateCopyWithImpl<$Res, $Val extends StreetState>
    implements $StreetStateCopyWith<$Res> {
  _$StreetStateCopyWithImpl(this._value, this._then);

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
              as List<StreetModel>,
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
abstract class _$$StreetStateImplCopyWith<$Res>
    implements $StreetStateCopyWith<$Res> {
  factory _$$StreetStateImplCopyWith(
          _$StreetStateImpl value, $Res Function(_$StreetStateImpl) then) =
      __$$StreetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StreetModel> results, Status status, String? errorMessage});
}

/// @nodoc
class __$$StreetStateImplCopyWithImpl<$Res>
    extends _$StreetStateCopyWithImpl<$Res, _$StreetStateImpl>
    implements _$$StreetStateImplCopyWith<$Res> {
  __$$StreetStateImplCopyWithImpl(
      _$StreetStateImpl _value, $Res Function(_$StreetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$StreetStateImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<StreetModel>,
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

class _$StreetStateImpl implements _StreetState {
  _$StreetStateImpl(
      {final List<StreetModel> results = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _results = results;

  final List<StreetModel> _results;
  @override
  @JsonKey()
  List<StreetModel> get results {
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
    return 'StreetState(results: $results, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreetStateImpl &&
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
  _$$StreetStateImplCopyWith<_$StreetStateImpl> get copyWith =>
      __$$StreetStateImplCopyWithImpl<_$StreetStateImpl>(this, _$identity);
}

abstract class _StreetState implements StreetState {
  factory _StreetState(
      {final List<StreetModel> results,
      final Status status,
      final String? errorMessage}) = _$StreetStateImpl;

  @override
  List<StreetModel> get results;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$StreetStateImplCopyWith<_$StreetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
