// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String title) loaded,
    required TResult Function(String latitude, String longitude) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String title)? loaded,
    TResult? Function(String latitude, String longitude)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String title)? loaded,
    TResult Function(String latitude, String longitude)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherIdleState value) idle,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherIdleState value)? idle,
    TResult? Function(WeatherLoadingState value)? loading,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherIdleState value)? idle,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherIdleStateImplCopyWith<$Res> {
  factory _$$WeatherIdleStateImplCopyWith(_$WeatherIdleStateImpl value,
          $Res Function(_$WeatherIdleStateImpl) then) =
      __$$WeatherIdleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherIdleStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherIdleStateImpl>
    implements _$$WeatherIdleStateImplCopyWith<$Res> {
  __$$WeatherIdleStateImplCopyWithImpl(_$WeatherIdleStateImpl _value,
      $Res Function(_$WeatherIdleStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherIdleStateImpl implements WeatherIdleState {
  const _$WeatherIdleStateImpl();

  @override
  String toString() {
    return 'WeatherState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherIdleStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String title) loaded,
    required TResult Function(String latitude, String longitude) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String title)? loaded,
    TResult? Function(String latitude, String longitude)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String title)? loaded,
    TResult Function(String latitude, String longitude)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherIdleState value) idle,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherErrorState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherIdleState value)? idle,
    TResult? Function(WeatherLoadingState value)? loading,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherErrorState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherIdleState value)? idle,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class WeatherIdleState implements WeatherState {
  const factory WeatherIdleState() = _$WeatherIdleStateImpl;
}

/// @nodoc
abstract class _$$WeatherLoadingStateImplCopyWith<$Res> {
  factory _$$WeatherLoadingStateImplCopyWith(_$WeatherLoadingStateImpl value,
          $Res Function(_$WeatherLoadingStateImpl) then) =
      __$$WeatherLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherLoadingStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoadingStateImpl>
    implements _$$WeatherLoadingStateImplCopyWith<$Res> {
  __$$WeatherLoadingStateImplCopyWithImpl(_$WeatherLoadingStateImpl _value,
      $Res Function(_$WeatherLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherLoadingStateImpl implements WeatherLoadingState {
  const _$WeatherLoadingStateImpl();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String title) loaded,
    required TResult Function(String latitude, String longitude) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String title)? loaded,
    TResult? Function(String latitude, String longitude)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String title)? loaded,
    TResult Function(String latitude, String longitude)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherIdleState value) idle,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherIdleState value)? idle,
    TResult? Function(WeatherLoadingState value)? loading,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherIdleState value)? idle,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherLoadingState implements WeatherState {
  const factory WeatherLoadingState() = _$WeatherLoadingStateImpl;
}

/// @nodoc
abstract class _$$WeatherLoadedStateImplCopyWith<$Res> {
  factory _$$WeatherLoadedStateImplCopyWith(_$WeatherLoadedStateImpl value,
          $Res Function(_$WeatherLoadedStateImpl) then) =
      __$$WeatherLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$WeatherLoadedStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoadedStateImpl>
    implements _$$WeatherLoadedStateImplCopyWith<$Res> {
  __$$WeatherLoadedStateImplCopyWithImpl(_$WeatherLoadedStateImpl _value,
      $Res Function(_$WeatherLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$WeatherLoadedStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherLoadedStateImpl implements WeatherLoadedState {
  const _$WeatherLoadedStateImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'WeatherState.loaded(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLoadedStateImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLoadedStateImplCopyWith<_$WeatherLoadedStateImpl> get copyWith =>
      __$$WeatherLoadedStateImplCopyWithImpl<_$WeatherLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String title) loaded,
    required TResult Function(String latitude, String longitude) error,
  }) {
    return loaded(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String title)? loaded,
    TResult? Function(String latitude, String longitude)? error,
  }) {
    return loaded?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String title)? loaded,
    TResult Function(String latitude, String longitude)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherIdleState value) idle,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherIdleState value)? idle,
    TResult? Function(WeatherLoadingState value)? loading,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherIdleState value)? idle,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WeatherLoadedState implements WeatherState {
  const factory WeatherLoadedState({required final String title}) =
      _$WeatherLoadedStateImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$WeatherLoadedStateImplCopyWith<_$WeatherLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherErrorStateImplCopyWith<$Res> {
  factory _$$WeatherErrorStateImplCopyWith(_$WeatherErrorStateImpl value,
          $Res Function(_$WeatherErrorStateImpl) then) =
      __$$WeatherErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String latitude, String longitude});
}

/// @nodoc
class __$$WeatherErrorStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherErrorStateImpl>
    implements _$$WeatherErrorStateImplCopyWith<$Res> {
  __$$WeatherErrorStateImplCopyWithImpl(_$WeatherErrorStateImpl _value,
      $Res Function(_$WeatherErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$WeatherErrorStateImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherErrorStateImpl implements WeatherErrorState {
  const _$WeatherErrorStateImpl(
      {required this.latitude, required this.longitude});

  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'WeatherState.error(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherErrorStateImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherErrorStateImplCopyWith<_$WeatherErrorStateImpl> get copyWith =>
      __$$WeatherErrorStateImplCopyWithImpl<_$WeatherErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String title) loaded,
    required TResult Function(String latitude, String longitude) error,
  }) {
    return error(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String title)? loaded,
    TResult? Function(String latitude, String longitude)? error,
  }) {
    return error?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String title)? loaded,
    TResult Function(String latitude, String longitude)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherIdleState value) idle,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherLoadedState value) loaded,
    required TResult Function(WeatherErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherIdleState value)? idle,
    TResult? Function(WeatherLoadingState value)? loading,
    TResult? Function(WeatherLoadedState value)? loaded,
    TResult? Function(WeatherErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherIdleState value)? idle,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherLoadedState value)? loaded,
    TResult Function(WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherErrorState implements WeatherState {
  const factory WeatherErrorState(
      {required final String latitude,
      required final String longitude}) = _$WeatherErrorStateImpl;

  String get latitude;
  String get longitude;
  @JsonKey(ignore: true)
  _$$WeatherErrorStateImplCopyWith<_$WeatherErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
