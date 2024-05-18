// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityItem {
  String get title => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityItemCopyWith<CityItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityItemCopyWith<$Res> {
  factory $CityItemCopyWith(CityItem value, $Res Function(CityItem) then) =
      _$CityItemCopyWithImpl<$Res, CityItem>;
  @useResult
  $Res call({String title, double latitude, double longitude});
}

/// @nodoc
class _$CityItemCopyWithImpl<$Res, $Val extends CityItem>
    implements $CityItemCopyWith<$Res> {
  _$CityItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityItemValueImplCopyWith<$Res>
    implements $CityItemCopyWith<$Res> {
  factory _$$CityItemValueImplCopyWith(
          _$CityItemValueImpl value, $Res Function(_$CityItemValueImpl) then) =
      __$$CityItemValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, double latitude, double longitude});
}

/// @nodoc
class __$$CityItemValueImplCopyWithImpl<$Res>
    extends _$CityItemCopyWithImpl<$Res, _$CityItemValueImpl>
    implements _$$CityItemValueImplCopyWith<$Res> {
  __$$CityItemValueImplCopyWithImpl(
      _$CityItemValueImpl _value, $Res Function(_$CityItemValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$CityItemValueImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CityItemValueImpl implements CityItemValue {
  const _$CityItemValueImpl(
      {required this.title, required this.latitude, required this.longitude});

  @override
  final String title;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'CityItem(title: $title, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityItemValueImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityItemValueImplCopyWith<_$CityItemValueImpl> get copyWith =>
      __$$CityItemValueImplCopyWithImpl<_$CityItemValueImpl>(this, _$identity);
}

abstract class CityItemValue implements CityItem {
  const factory CityItemValue(
      {required final String title,
      required final double latitude,
      required final double longitude}) = _$CityItemValueImpl;

  @override
  String get title;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$CityItemValueImplCopyWith<_$CityItemValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
