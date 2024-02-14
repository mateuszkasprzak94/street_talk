// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../emotions_content_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmotionsContentState {
  List<EmotionsContentModel> get results => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmotionsContentStateCopyWith<EmotionsContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionsContentStateCopyWith<$Res> {
  factory $EmotionsContentStateCopyWith(EmotionsContentState value,
          $Res Function(EmotionsContentState) then) =
      _$EmotionsContentStateCopyWithImpl<$Res, EmotionsContentState>;
  @useResult
  $Res call(
      {List<EmotionsContentModel> results,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$EmotionsContentStateCopyWithImpl<$Res,
        $Val extends EmotionsContentState>
    implements $EmotionsContentStateCopyWith<$Res> {
  _$EmotionsContentStateCopyWithImpl(this._value, this._then);

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
              as List<EmotionsContentModel>,
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
abstract class _$$EmotionsContentStateImplCopyWith<$Res>
    implements $EmotionsContentStateCopyWith<$Res> {
  factory _$$EmotionsContentStateImplCopyWith(_$EmotionsContentStateImpl value,
          $Res Function(_$EmotionsContentStateImpl) then) =
      __$$EmotionsContentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EmotionsContentModel> results,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$EmotionsContentStateImplCopyWithImpl<$Res>
    extends _$EmotionsContentStateCopyWithImpl<$Res, _$EmotionsContentStateImpl>
    implements _$$EmotionsContentStateImplCopyWith<$Res> {
  __$$EmotionsContentStateImplCopyWithImpl(_$EmotionsContentStateImpl _value,
      $Res Function(_$EmotionsContentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$EmotionsContentStateImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<EmotionsContentModel>,
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

class _$EmotionsContentStateImpl implements _EmotionsContentState {
  _$EmotionsContentStateImpl(
      {final List<EmotionsContentModel> results = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _results = results;

  final List<EmotionsContentModel> _results;
  @override
  @JsonKey()
  List<EmotionsContentModel> get results {
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
    return 'EmotionsContentState(results: $results, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmotionsContentStateImpl &&
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
  _$$EmotionsContentStateImplCopyWith<_$EmotionsContentStateImpl>
      get copyWith =>
          __$$EmotionsContentStateImplCopyWithImpl<_$EmotionsContentStateImpl>(
              this, _$identity);
}

abstract class _EmotionsContentState implements EmotionsContentState {
  factory _EmotionsContentState(
      {final List<EmotionsContentModel> results,
      final Status status,
      final String? errorMessage}) = _$EmotionsContentStateImpl;

  @override
  List<EmotionsContentModel> get results;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$EmotionsContentStateImplCopyWith<_$EmotionsContentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
