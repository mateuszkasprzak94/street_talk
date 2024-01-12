// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emotions_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmotionsPageState {
  List<EmotionsNameModel> get results => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmotionsPageStateCopyWith<EmotionsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionsPageStateCopyWith<$Res> {
  factory $EmotionsPageStateCopyWith(
          EmotionsPageState value, $Res Function(EmotionsPageState) then) =
      _$EmotionsPageStateCopyWithImpl<$Res, EmotionsPageState>;
  @useResult
  $Res call(
      {List<EmotionsNameModel> results, Status status, String? errorMessage});
}

/// @nodoc
class _$EmotionsPageStateCopyWithImpl<$Res, $Val extends EmotionsPageState>
    implements $EmotionsPageStateCopyWith<$Res> {
  _$EmotionsPageStateCopyWithImpl(this._value, this._then);

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
              as List<EmotionsNameModel>,
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
abstract class _$$EmotionsPageStateImplCopyWith<$Res>
    implements $EmotionsPageStateCopyWith<$Res> {
  factory _$$EmotionsPageStateImplCopyWith(_$EmotionsPageStateImpl value,
          $Res Function(_$EmotionsPageStateImpl) then) =
      __$$EmotionsPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EmotionsNameModel> results, Status status, String? errorMessage});
}

/// @nodoc
class __$$EmotionsPageStateImplCopyWithImpl<$Res>
    extends _$EmotionsPageStateCopyWithImpl<$Res, _$EmotionsPageStateImpl>
    implements _$$EmotionsPageStateImplCopyWith<$Res> {
  __$$EmotionsPageStateImplCopyWithImpl(_$EmotionsPageStateImpl _value,
      $Res Function(_$EmotionsPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$EmotionsPageStateImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<EmotionsNameModel>,
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

class _$EmotionsPageStateImpl implements _EmotionsPageState {
  _$EmotionsPageStateImpl(
      {final List<EmotionsNameModel> results = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _results = results;

  final List<EmotionsNameModel> _results;
  @override
  @JsonKey()
  List<EmotionsNameModel> get results {
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
    return 'EmotionsPageState(results: $results, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmotionsPageStateImpl &&
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
  _$$EmotionsPageStateImplCopyWith<_$EmotionsPageStateImpl> get copyWith =>
      __$$EmotionsPageStateImplCopyWithImpl<_$EmotionsPageStateImpl>(
          this, _$identity);
}

abstract class _EmotionsPageState implements EmotionsPageState {
  factory _EmotionsPageState(
      {final List<EmotionsNameModel> results,
      final Status status,
      final String? errorMessage}) = _$EmotionsPageStateImpl;

  @override
  List<EmotionsNameModel> get results;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$EmotionsPageStateImplCopyWith<_$EmotionsPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
