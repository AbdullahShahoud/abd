// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'singin_stare.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SinginState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SinginInitial<T> value) initial,
    required TResult Function(SinginLoading<T> value) loading,
    required TResult Function(SinginnSuccess<T> value) success,
    required TResult Function(SinginError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SinginInitial<T> value)? initial,
    TResult? Function(SinginLoading<T> value)? loading,
    TResult? Function(SinginnSuccess<T> value)? success,
    TResult? Function(SinginError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SinginInitial<T> value)? initial,
    TResult Function(SinginLoading<T> value)? loading,
    TResult Function(SinginnSuccess<T> value)? success,
    TResult Function(SinginError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SinginStateCopyWith<T, $Res> {
  factory $SinginStateCopyWith(
          SinginState<T> value, $Res Function(SinginState<T>) then) =
      _$SinginStateCopyWithImpl<T, $Res, SinginState<T>>;
}

/// @nodoc
class _$SinginStateCopyWithImpl<T, $Res, $Val extends SinginState<T>>
    implements $SinginStateCopyWith<T, $Res> {
  _$SinginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SinginInitialImplCopyWith<T, $Res> {
  factory _$$SinginInitialImplCopyWith(_$SinginInitialImpl<T> value,
          $Res Function(_$SinginInitialImpl<T>) then) =
      __$$SinginInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SinginInitialImplCopyWithImpl<T, $Res>
    extends _$SinginStateCopyWithImpl<T, $Res, _$SinginInitialImpl<T>>
    implements _$$SinginInitialImplCopyWith<T, $Res> {
  __$$SinginInitialImplCopyWithImpl(_$SinginInitialImpl<T> _value,
      $Res Function(_$SinginInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SinginInitialImpl<T> implements _SinginInitial<T> {
  const _$SinginInitialImpl();

  @override
  String toString() {
    return 'SinginState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SinginInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SinginInitial<T> value) initial,
    required TResult Function(SinginLoading<T> value) loading,
    required TResult Function(SinginnSuccess<T> value) success,
    required TResult Function(SinginError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SinginInitial<T> value)? initial,
    TResult? Function(SinginLoading<T> value)? loading,
    TResult? Function(SinginnSuccess<T> value)? success,
    TResult? Function(SinginError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SinginInitial<T> value)? initial,
    TResult Function(SinginLoading<T> value)? loading,
    TResult Function(SinginnSuccess<T> value)? success,
    TResult Function(SinginError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SinginInitial<T> implements SinginState<T> {
  const factory _SinginInitial() = _$SinginInitialImpl<T>;
}

/// @nodoc
abstract class _$$SinginLoadingImplCopyWith<T, $Res> {
  factory _$$SinginLoadingImplCopyWith(_$SinginLoadingImpl<T> value,
          $Res Function(_$SinginLoadingImpl<T>) then) =
      __$$SinginLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SinginLoadingImplCopyWithImpl<T, $Res>
    extends _$SinginStateCopyWithImpl<T, $Res, _$SinginLoadingImpl<T>>
    implements _$$SinginLoadingImplCopyWith<T, $Res> {
  __$$SinginLoadingImplCopyWithImpl(_$SinginLoadingImpl<T> _value,
      $Res Function(_$SinginLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SinginLoadingImpl<T> implements SinginLoading<T> {
  const _$SinginLoadingImpl();

  @override
  String toString() {
    return 'SinginState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SinginLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
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
    required TResult Function(_SinginInitial<T> value) initial,
    required TResult Function(SinginLoading<T> value) loading,
    required TResult Function(SinginnSuccess<T> value) success,
    required TResult Function(SinginError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SinginInitial<T> value)? initial,
    TResult? Function(SinginLoading<T> value)? loading,
    TResult? Function(SinginnSuccess<T> value)? success,
    TResult? Function(SinginError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SinginInitial<T> value)? initial,
    TResult Function(SinginLoading<T> value)? loading,
    TResult Function(SinginnSuccess<T> value)? success,
    TResult Function(SinginError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SinginLoading<T> implements SinginState<T> {
  const factory SinginLoading() = _$SinginLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SinginnSuccessImplCopyWith<T, $Res> {
  factory _$$SinginnSuccessImplCopyWith(_$SinginnSuccessImpl<T> value,
          $Res Function(_$SinginnSuccessImpl<T>) then) =
      __$$SinginnSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SinginnSuccessImplCopyWithImpl<T, $Res>
    extends _$SinginStateCopyWithImpl<T, $Res, _$SinginnSuccessImpl<T>>
    implements _$$SinginnSuccessImplCopyWith<T, $Res> {
  __$$SinginnSuccessImplCopyWithImpl(_$SinginnSuccessImpl<T> _value,
      $Res Function(_$SinginnSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SinginnSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SinginnSuccessImpl<T> implements SinginnSuccess<T> {
  const _$SinginnSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SinginState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SinginnSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SinginnSuccessImplCopyWith<T, _$SinginnSuccessImpl<T>> get copyWith =>
      __$$SinginnSuccessImplCopyWithImpl<T, _$SinginnSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SinginInitial<T> value) initial,
    required TResult Function(SinginLoading<T> value) loading,
    required TResult Function(SinginnSuccess<T> value) success,
    required TResult Function(SinginError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SinginInitial<T> value)? initial,
    TResult? Function(SinginLoading<T> value)? loading,
    TResult? Function(SinginnSuccess<T> value)? success,
    TResult? Function(SinginError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SinginInitial<T> value)? initial,
    TResult Function(SinginLoading<T> value)? loading,
    TResult Function(SinginnSuccess<T> value)? success,
    TResult Function(SinginError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SinginnSuccess<T> implements SinginState<T> {
  const factory SinginnSuccess(final T data) = _$SinginnSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SinginnSuccessImplCopyWith<T, _$SinginnSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SinginErrorImplCopyWith<T, $Res> {
  factory _$$SinginErrorImplCopyWith(_$SinginErrorImpl<T> value,
          $Res Function(_$SinginErrorImpl<T>) then) =
      __$$SinginErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SinginErrorImplCopyWithImpl<T, $Res>
    extends _$SinginStateCopyWithImpl<T, $Res, _$SinginErrorImpl<T>>
    implements _$$SinginErrorImplCopyWith<T, $Res> {
  __$$SinginErrorImplCopyWithImpl(
      _$SinginErrorImpl<T> _value, $Res Function(_$SinginErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SinginErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SinginErrorImpl<T> implements SinginError<T> {
  const _$SinginErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SinginState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SinginErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SinginErrorImplCopyWith<T, _$SinginErrorImpl<T>> get copyWith =>
      __$$SinginErrorImplCopyWithImpl<T, _$SinginErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SinginInitial<T> value) initial,
    required TResult Function(SinginLoading<T> value) loading,
    required TResult Function(SinginnSuccess<T> value) success,
    required TResult Function(SinginError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SinginInitial<T> value)? initial,
    TResult? Function(SinginLoading<T> value)? loading,
    TResult? Function(SinginnSuccess<T> value)? success,
    TResult? Function(SinginError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SinginInitial<T> value)? initial,
    TResult Function(SinginLoading<T> value)? loading,
    TResult Function(SinginnSuccess<T> value)? success,
    TResult Function(SinginError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SinginError<T> implements SinginState<T> {
  const factory SinginError({required final String error}) =
      _$SinginErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$SinginErrorImplCopyWith<T, _$SinginErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
