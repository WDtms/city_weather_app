// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CitiesState {
  String get startsWith => throw _privateConstructorUsedError;
  List<CityItem> get cityList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CitiesStateCopyWith<CitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesStateCopyWith<$Res> {
  factory $CitiesStateCopyWith(
          CitiesState value, $Res Function(CitiesState) then) =
      _$CitiesStateCopyWithImpl<$Res, CitiesState>;
  @useResult
  $Res call({String startsWith, List<CityItem> cityList});
}

/// @nodoc
class _$CitiesStateCopyWithImpl<$Res, $Val extends CitiesState>
    implements $CitiesStateCopyWith<$Res> {
  _$CitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startsWith = null,
    Object? cityList = null,
  }) {
    return _then(_value.copyWith(
      startsWith: null == startsWith
          ? _value.startsWith
          : startsWith // ignore: cast_nullable_to_non_nullable
              as String,
      cityList: null == cityList
          ? _value.cityList
          : cityList // ignore: cast_nullable_to_non_nullable
              as List<CityItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CitiesStateValueImplCopyWith<$Res>
    implements $CitiesStateCopyWith<$Res> {
  factory _$$CitiesStateValueImplCopyWith(_$CitiesStateValueImpl value,
          $Res Function(_$CitiesStateValueImpl) then) =
      __$$CitiesStateValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startsWith, List<CityItem> cityList});
}

/// @nodoc
class __$$CitiesStateValueImplCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res, _$CitiesStateValueImpl>
    implements _$$CitiesStateValueImplCopyWith<$Res> {
  __$$CitiesStateValueImplCopyWithImpl(_$CitiesStateValueImpl _value,
      $Res Function(_$CitiesStateValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startsWith = null,
    Object? cityList = null,
  }) {
    return _then(_$CitiesStateValueImpl(
      startsWith: null == startsWith
          ? _value.startsWith
          : startsWith // ignore: cast_nullable_to_non_nullable
              as String,
      cityList: null == cityList
          ? _value._cityList
          : cityList // ignore: cast_nullable_to_non_nullable
              as List<CityItem>,
    ));
  }
}

/// @nodoc

class _$CitiesStateValueImpl implements CitiesStateValue {
  const _$CitiesStateValueImpl(
      {required this.startsWith, required final List<CityItem> cityList})
      : _cityList = cityList;

  @override
  final String startsWith;
  final List<CityItem> _cityList;
  @override
  List<CityItem> get cityList {
    if (_cityList is EqualUnmodifiableListView) return _cityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cityList);
  }

  @override
  String toString() {
    return 'CitiesState(startsWith: $startsWith, cityList: $cityList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitiesStateValueImpl &&
            (identical(other.startsWith, startsWith) ||
                other.startsWith == startsWith) &&
            const DeepCollectionEquality().equals(other._cityList, _cityList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, startsWith, const DeepCollectionEquality().hash(_cityList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitiesStateValueImplCopyWith<_$CitiesStateValueImpl> get copyWith =>
      __$$CitiesStateValueImplCopyWithImpl<_$CitiesStateValueImpl>(
          this, _$identity);
}

abstract class CitiesStateValue implements CitiesState {
  const factory CitiesStateValue(
      {required final String startsWith,
      required final List<CityItem> cityList}) = _$CitiesStateValueImpl;

  @override
  String get startsWith;
  @override
  List<CityItem> get cityList;
  @override
  @JsonKey(ignore: true)
  _$$CitiesStateValueImplCopyWith<_$CitiesStateValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
