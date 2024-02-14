// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../set_two_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetTwoState {
  List<FlashCardsDetailModel> get items => throw _privateConstructorUsedError;
  PageController? get controllerFlashPage => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetTwoStateCopyWith<SetTwoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetTwoStateCopyWith<$Res> {
  factory $SetTwoStateCopyWith(
          SetTwoState value, $Res Function(SetTwoState) then) =
      _$SetTwoStateCopyWithImpl<$Res, SetTwoState>;
  @useResult
  $Res call(
      {List<FlashCardsDetailModel> items,
      PageController? controllerFlashPage,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$SetTwoStateCopyWithImpl<$Res, $Val extends SetTwoState>
    implements $SetTwoStateCopyWith<$Res> {
  _$SetTwoStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SetTwoStateImplCopyWith<$Res>
    implements $SetTwoStateCopyWith<$Res> {
  factory _$$SetTwoStateImplCopyWith(
          _$SetTwoStateImpl value, $Res Function(_$SetTwoStateImpl) then) =
      __$$SetTwoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FlashCardsDetailModel> items,
      PageController? controllerFlashPage,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$SetTwoStateImplCopyWithImpl<$Res>
    extends _$SetTwoStateCopyWithImpl<$Res, _$SetTwoStateImpl>
    implements _$$SetTwoStateImplCopyWith<$Res> {
  __$$SetTwoStateImplCopyWithImpl(
      _$SetTwoStateImpl _value, $Res Function(_$SetTwoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? controllerFlashPage = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SetTwoStateImpl(
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

class _$SetTwoStateImpl implements _SetTwoState {
  _$SetTwoStateImpl(
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
    return 'SetTwoState(items: $items, controllerFlashPage: $controllerFlashPage, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTwoStateImpl &&
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
  _$$SetTwoStateImplCopyWith<_$SetTwoStateImpl> get copyWith =>
      __$$SetTwoStateImplCopyWithImpl<_$SetTwoStateImpl>(this, _$identity);
}

abstract class _SetTwoState implements SetTwoState {
  factory _SetTwoState(
      {final List<FlashCardsDetailModel> items,
      final PageController? controllerFlashPage,
      final Status status,
      final String? errorMessage}) = _$SetTwoStateImpl;

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
  _$$SetTwoStateImplCopyWith<_$SetTwoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
