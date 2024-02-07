// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventsModel _$EventsModelFromJson(Map<String, dynamic> json) {
  return _EventsModel.fromJson(json);
}

/// @nodoc
mixin _$EventsModel {
  String get category => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get keyFeatures => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsModelCopyWith<EventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsModelCopyWith<$Res> {
  factory $EventsModelCopyWith(
          EventsModel value, $Res Function(EventsModel) then) =
      _$EventsModelCopyWithImpl<$Res, EventsModel>;
  @useResult
  $Res call(
      {String category,
      String location,
      String date,
      String keyFeatures,
      String description});
}

/// @nodoc
class _$EventsModelCopyWithImpl<$Res, $Val extends EventsModel>
    implements $EventsModelCopyWith<$Res> {
  _$EventsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? location = null,
    Object? date = null,
    Object? keyFeatures = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      keyFeatures: null == keyFeatures
          ? _value.keyFeatures
          : keyFeatures // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventsModelImplCopyWith<$Res>
    implements $EventsModelCopyWith<$Res> {
  factory _$$EventsModelImplCopyWith(
          _$EventsModelImpl value, $Res Function(_$EventsModelImpl) then) =
      __$$EventsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      String location,
      String date,
      String keyFeatures,
      String description});
}

/// @nodoc
class __$$EventsModelImplCopyWithImpl<$Res>
    extends _$EventsModelCopyWithImpl<$Res, _$EventsModelImpl>
    implements _$$EventsModelImplCopyWith<$Res> {
  __$$EventsModelImplCopyWithImpl(
      _$EventsModelImpl _value, $Res Function(_$EventsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? location = null,
    Object? date = null,
    Object? keyFeatures = null,
    Object? description = null,
  }) {
    return _then(_$EventsModelImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      null == keyFeatures
          ? _value.keyFeatures
          : keyFeatures // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$EventsModelImpl implements _EventsModel {
  _$EventsModelImpl(this.category, this.location, this.date, this.keyFeatures,
      this.description);

  factory _$EventsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventsModelImplFromJson(json);

  @override
  final String category;
  @override
  final String location;
  @override
  final String date;
  @override
  final String keyFeatures;
  @override
  final String description;

  @override
  String toString() {
    return 'EventsModel(category: $category, location: $location, date: $date, keyFeatures: $keyFeatures, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsModelImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.keyFeatures, keyFeatures) ||
                other.keyFeatures == keyFeatures) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, category, location, date, keyFeatures, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsModelImplCopyWith<_$EventsModelImpl> get copyWith =>
      __$$EventsModelImplCopyWithImpl<_$EventsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventsModelImplToJson(
      this,
    );
  }
}

abstract class _EventsModel implements EventsModel {
  factory _EventsModel(
      final String category,
      final String location,
      final String date,
      final String keyFeatures,
      final String description) = _$EventsModelImpl;

  factory _EventsModel.fromJson(Map<String, dynamic> json) =
      _$EventsModelImpl.fromJson;

  @override
  String get category;
  @override
  String get location;
  @override
  String get date;
  @override
  String get keyFeatures;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$EventsModelImplCopyWith<_$EventsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
