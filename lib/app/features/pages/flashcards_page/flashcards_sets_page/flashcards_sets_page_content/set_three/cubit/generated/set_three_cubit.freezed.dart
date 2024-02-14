// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../set_three_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetThreeState {
  List<FlashCardsDetailModel> get items => throw _privateConstructorUsedError;
  PageController? get controllerFlashPage => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetThreeStateCopyWith<SetThreeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetThreeStateCopyWith<$Res> {
  factory $SetThreeStateCopyWith(
          SetThreeState value, $Res Function(SetThreeState) then) =
      _$SetThreeStateCopyWithImpl<$Res, SetThreeState>;
  @useResult
  $Res call(
      {List<FlashCardsDetailModel> items,
      PageController? controllerFlashPage,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$SetThreeStateCopyWithImpl<$Res, $Val extends SetThreeState>
    implements $SetThreeStateCopyWith<$Res> {
  _$SetThreeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? controllerFlashPage = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FlashCardsDetailModel>,
      controllerFlashPage: freezed == controllerFlashPage
          ? _value.controllerFlashPage
          : controllerFlashPage // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SetThreeStateImplCopyWith<$Res>
    implements $SetThreeStateCopyWith<$Res> {
  factory _$$SetThreeStateImplCopyWith(
          _$SetThreeStateImpl value, $Res Function(_$SetThreeStateImpl) then) =
      __$$SetThreeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FlashCardsDetailModel> items,
      PageController? controllerFlashPage,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$SetThreeStateImplCopyWithImpl<$Res>
    extends _$SetThreeStateCopyWithImpl<$Res, _$SetThreeStateImpl>
    implements _$$SetThreeStateImplCopyWith<$Res> {
  __$$SetThreeStateImplCopyWithImpl(
      _$SetThreeStateImpl _value, $Res Function(_$SetThreeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? controllerFlashPage = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SetThreeStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FlashCardsDetailModel>,
      controllerFlashPage: freezed == controllerFlashPage
          ? _value.controllerFlashPage
          : controllerFlashPage // ignore: cast_nullable_to_non_nullable
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

class _$SetThreeStateImpl implements _SetThreeState {
  _$SetThreeStateImpl(
      {final List<FlashCardsDetailModel> items = const [],
      this.controllerFlashPage,
      this.status = Status.initial,
      this.errorMessage})
      : _items = items;

  final List<FlashCardsDetailModel> _items;
  @override
  @JsonKey()
  List<FlashCardsDetailModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final PageController? controllerFlashPage;
  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SetThreeState(items: $items, controllerFlashPage: $controllerFlashPage, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetThreeStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.controllerFlashPage, controllerFlashPage) ||
                other.controllerFlashPage == controllerFlashPage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      controllerFlashPage,
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetThreeStateImplCopyWith<_$SetThreeStateImpl> get copyWith =>
      __$$SetThreeStateImplCopyWithImpl<_$SetThreeStateImpl>(this, _$identity);
}

abstract class _SetThreeState implements SetThreeState {
  factory _SetThreeState(
      {final List<FlashCardsDetailModel> items,
      final PageController? controllerFlashPage,
      final Status status,
      final String? errorMessage}) = _$SetThreeStateImpl;

  @override
  List<FlashCardsDetailModel> get items;
  @override
  PageController? get controllerFlashPage;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SetThreeStateImplCopyWith<_$SetThreeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
