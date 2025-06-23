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
    required TResult Function() loadingOtp,
    required TResult Function(T data) successOtp,
    required TResult Function(String error) errorOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingOtp,
    TResult? Function(T data)? successOtp,
    TResult? Function(String error)? errorOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingOtp,
    TResult Function(T data)? successOtp,
    TResult Function(String error)? errorOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SinginInitial<T> value) initial,
    required TResult Function(SinginLoading<T> value) loading,
    required TResult Function(SinginnSuccess<T> value) success,
    required TResult Function(SinginError<T> value) error,
    required TResult Function(SinginLoadingOtp<T> value) loadingOtp,
    required TResult Function(SinginnSuccessOtp<T> value) successOtp,
    required TResult Function(SinginErrorOtp<T> value) errorOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SinginInitial<T> value)? initial,
    TResult? Function(SinginLoading<T> value)? loading,
    TResult? Function(SinginnSuccess<T> value)? success,
    TResult? Function(SinginError<T> value)? error,
    TResult? Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult? Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult? Function(SinginErrorOtp<T> value)? errorOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SinginInitial<T> value)? initial,
    TResult Function(SinginLoading<T> value)? loading,
    TResult Function(SinginnSuccess<T> value)? success,
    TResult Function(SinginError<T> value)? error,
    TResult Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult Function(SinginErrorOtp<T> value)? errorOtp,
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
    required TResult Function() loadingOtp,
    required TResult Function(T data) successOtp,
    required TResult Function(String error) errorOtp,
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
    TResult? Function()? loadingOtp,
    TResult? Function(T data)? successOtp,
    TResult? Function(String error)? errorOtp,
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
    TResult Function()? loadingOtp,
    TResult Function(T data)? successOtp,
    TResult Function(String error)? errorOtp,
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
    required TResult Function(SinginLoadingOtp<T> value) loadingOtp,
    required TResult Function(SinginnSuccessOtp<T> value) successOtp,
    required TResult Function(SinginErrorOtp<T> value) errorOtp,
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
    TResult? Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult? Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult? Function(SinginErrorOtp<T> value)? errorOtp,
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
    TResult Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult Function(SinginErrorOtp<T> value)? errorOtp,
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
    required TResult Function() loadingOtp,
    required TResult Function(T data) successOtp,
    required TResult Function(String error) errorOtp,
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
    TResult? Function()? loadingOtp,
    TResult? Function(T data)? successOtp,
    TResult? Function(String error)? errorOtp,
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
    TResult Function()? loadingOtp,
    TResult Function(T data)? successOtp,
    TResult Function(String error)? errorOtp,
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
    required TResult Function(SinginLoadingOtp<T> value) loadingOtp,
    required TResult Function(SinginnSuccessOtp<T> value) successOtp,
    required TResult Function(SinginErrorOtp<T> value) errorOtp,
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
    TResult? Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult? Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult? Function(SinginErrorOtp<T> value)? errorOtp,
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
    TResult Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult Function(SinginErrorOtp<T> value)? errorOtp,
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
    required TResult Function() loadingOtp,
    required TResult Function(T data) successOtp,
    required TResult Function(String error) errorOtp,
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
    TResult? Function()? loadingOtp,
    TResult? Function(T data)? successOtp,
    TResult? Function(String error)? errorOtp,
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
    TResult Function()? loadingOtp,
    TResult Function(T data)? successOtp,
    TResult Function(String error)? errorOtp,
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
    required TResult Function(SinginLoadingOtp<T> value) loadingOtp,
    required TResult Function(SinginnSuccessOtp<T> value) successOtp,
    required TResult Function(SinginErrorOtp<T> value) errorOtp,
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
    TResult? Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult? Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult? Function(SinginErrorOtp<T> value)? errorOtp,
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
    TResult Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult Function(SinginErrorOtp<T> value)? errorOtp,
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
    required TResult Function() loadingOtp,
    required TResult Function(T data) successOtp,
    required TResult Function(String error) errorOtp,
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
    TResult? Function()? loadingOtp,
    TResult? Function(T data)? successOtp,
    TResult? Function(String error)? errorOtp,
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
    TResult Function()? loadingOtp,
    TResult Function(T data)? successOtp,
    TResult Function(String error)? errorOtp,
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
    required TResult Function(SinginLoadingOtp<T> value) loadingOtp,
    required TResult Function(SinginnSuccessOtp<T> value) successOtp,
    required TResult Function(SinginErrorOtp<T> value) errorOtp,
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
    TResult? Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult? Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult? Function(SinginErrorOtp<T> value)? errorOtp,
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
    TResult Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult Function(SinginErrorOtp<T> value)? errorOtp,
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

/// @nodoc
abstract class _$$SinginLoadingOtpImplCopyWith<T, $Res> {
  factory _$$SinginLoadingOtpImplCopyWith(_$SinginLoadingOtpImpl<T> value,
          $Res Function(_$SinginLoadingOtpImpl<T>) then) =
      __$$SinginLoadingOtpImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SinginLoadingOtpImplCopyWithImpl<T, $Res>
    extends _$SinginStateCopyWithImpl<T, $Res, _$SinginLoadingOtpImpl<T>>
    implements _$$SinginLoadingOtpImplCopyWith<T, $Res> {
  __$$SinginLoadingOtpImplCopyWithImpl(_$SinginLoadingOtpImpl<T> _value,
      $Res Function(_$SinginLoadingOtpImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SinginLoadingOtpImpl<T> implements SinginLoadingOtp<T> {
  const _$SinginLoadingOtpImpl();

  @override
  String toString() {
    return 'SinginState<$T>.loadingOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SinginLoadingOtpImpl<T>);
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
    required TResult Function() loadingOtp,
    required TResult Function(T data) successOtp,
    required TResult Function(String error) errorOtp,
  }) {
    return loadingOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingOtp,
    TResult? Function(T data)? successOtp,
    TResult? Function(String error)? errorOtp,
  }) {
    return loadingOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingOtp,
    TResult Function(T data)? successOtp,
    TResult Function(String error)? errorOtp,
    required TResult orElse(),
  }) {
    if (loadingOtp != null) {
      return loadingOtp();
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
    required TResult Function(SinginLoadingOtp<T> value) loadingOtp,
    required TResult Function(SinginnSuccessOtp<T> value) successOtp,
    required TResult Function(SinginErrorOtp<T> value) errorOtp,
  }) {
    return loadingOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SinginInitial<T> value)? initial,
    TResult? Function(SinginLoading<T> value)? loading,
    TResult? Function(SinginnSuccess<T> value)? success,
    TResult? Function(SinginError<T> value)? error,
    TResult? Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult? Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult? Function(SinginErrorOtp<T> value)? errorOtp,
  }) {
    return loadingOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SinginInitial<T> value)? initial,
    TResult Function(SinginLoading<T> value)? loading,
    TResult Function(SinginnSuccess<T> value)? success,
    TResult Function(SinginError<T> value)? error,
    TResult Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult Function(SinginErrorOtp<T> value)? errorOtp,
    required TResult orElse(),
  }) {
    if (loadingOtp != null) {
      return loadingOtp(this);
    }
    return orElse();
  }
}

abstract class SinginLoadingOtp<T> implements SinginState<T> {
  const factory SinginLoadingOtp() = _$SinginLoadingOtpImpl<T>;
}

/// @nodoc
abstract class _$$SinginnSuccessOtpImplCopyWith<T, $Res> {
  factory _$$SinginnSuccessOtpImplCopyWith(_$SinginnSuccessOtpImpl<T> value,
          $Res Function(_$SinginnSuccessOtpImpl<T>) then) =
      __$$SinginnSuccessOtpImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SinginnSuccessOtpImplCopyWithImpl<T, $Res>
    extends _$SinginStateCopyWithImpl<T, $Res, _$SinginnSuccessOtpImpl<T>>
    implements _$$SinginnSuccessOtpImplCopyWith<T, $Res> {
  __$$SinginnSuccessOtpImplCopyWithImpl(_$SinginnSuccessOtpImpl<T> _value,
      $Res Function(_$SinginnSuccessOtpImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SinginnSuccessOtpImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SinginnSuccessOtpImpl<T> implements SinginnSuccessOtp<T> {
  const _$SinginnSuccessOtpImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SinginState<$T>.successOtp(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SinginnSuccessOtpImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SinginnSuccessOtpImplCopyWith<T, _$SinginnSuccessOtpImpl<T>>
      get copyWith =>
          __$$SinginnSuccessOtpImplCopyWithImpl<T, _$SinginnSuccessOtpImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function() loadingOtp,
    required TResult Function(T data) successOtp,
    required TResult Function(String error) errorOtp,
  }) {
    return successOtp(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingOtp,
    TResult? Function(T data)? successOtp,
    TResult? Function(String error)? errorOtp,
  }) {
    return successOtp?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingOtp,
    TResult Function(T data)? successOtp,
    TResult Function(String error)? errorOtp,
    required TResult orElse(),
  }) {
    if (successOtp != null) {
      return successOtp(data);
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
    required TResult Function(SinginLoadingOtp<T> value) loadingOtp,
    required TResult Function(SinginnSuccessOtp<T> value) successOtp,
    required TResult Function(SinginErrorOtp<T> value) errorOtp,
  }) {
    return successOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SinginInitial<T> value)? initial,
    TResult? Function(SinginLoading<T> value)? loading,
    TResult? Function(SinginnSuccess<T> value)? success,
    TResult? Function(SinginError<T> value)? error,
    TResult? Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult? Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult? Function(SinginErrorOtp<T> value)? errorOtp,
  }) {
    return successOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SinginInitial<T> value)? initial,
    TResult Function(SinginLoading<T> value)? loading,
    TResult Function(SinginnSuccess<T> value)? success,
    TResult Function(SinginError<T> value)? error,
    TResult Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult Function(SinginErrorOtp<T> value)? errorOtp,
    required TResult orElse(),
  }) {
    if (successOtp != null) {
      return successOtp(this);
    }
    return orElse();
  }
}

abstract class SinginnSuccessOtp<T> implements SinginState<T> {
  const factory SinginnSuccessOtp(final T data) = _$SinginnSuccessOtpImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SinginnSuccessOtpImplCopyWith<T, _$SinginnSuccessOtpImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SinginErrorOtpImplCopyWith<T, $Res> {
  factory _$$SinginErrorOtpImplCopyWith(_$SinginErrorOtpImpl<T> value,
          $Res Function(_$SinginErrorOtpImpl<T>) then) =
      __$$SinginErrorOtpImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SinginErrorOtpImplCopyWithImpl<T, $Res>
    extends _$SinginStateCopyWithImpl<T, $Res, _$SinginErrorOtpImpl<T>>
    implements _$$SinginErrorOtpImplCopyWith<T, $Res> {
  __$$SinginErrorOtpImplCopyWithImpl(_$SinginErrorOtpImpl<T> _value,
      $Res Function(_$SinginErrorOtpImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SinginErrorOtpImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SinginErrorOtpImpl<T> implements SinginErrorOtp<T> {
  const _$SinginErrorOtpImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SinginState<$T>.errorOtp(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SinginErrorOtpImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SinginErrorOtpImplCopyWith<T, _$SinginErrorOtpImpl<T>> get copyWith =>
      __$$SinginErrorOtpImplCopyWithImpl<T, _$SinginErrorOtpImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function() loadingOtp,
    required TResult Function(T data) successOtp,
    required TResult Function(String error) errorOtp,
  }) {
    return errorOtp(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingOtp,
    TResult? Function(T data)? successOtp,
    TResult? Function(String error)? errorOtp,
  }) {
    return errorOtp?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingOtp,
    TResult Function(T data)? successOtp,
    TResult Function(String error)? errorOtp,
    required TResult orElse(),
  }) {
    if (errorOtp != null) {
      return errorOtp(this.error);
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
    required TResult Function(SinginLoadingOtp<T> value) loadingOtp,
    required TResult Function(SinginnSuccessOtp<T> value) successOtp,
    required TResult Function(SinginErrorOtp<T> value) errorOtp,
  }) {
    return errorOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SinginInitial<T> value)? initial,
    TResult? Function(SinginLoading<T> value)? loading,
    TResult? Function(SinginnSuccess<T> value)? success,
    TResult? Function(SinginError<T> value)? error,
    TResult? Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult? Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult? Function(SinginErrorOtp<T> value)? errorOtp,
  }) {
    return errorOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SinginInitial<T> value)? initial,
    TResult Function(SinginLoading<T> value)? loading,
    TResult Function(SinginnSuccess<T> value)? success,
    TResult Function(SinginError<T> value)? error,
    TResult Function(SinginLoadingOtp<T> value)? loadingOtp,
    TResult Function(SinginnSuccessOtp<T> value)? successOtp,
    TResult Function(SinginErrorOtp<T> value)? errorOtp,
    required TResult orElse(),
  }) {
    if (errorOtp != null) {
      return errorOtp(this);
    }
    return orElse();
  }
}

abstract class SinginErrorOtp<T> implements SinginState<T> {
  const factory SinginErrorOtp({required final String error}) =
      _$SinginErrorOtpImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$SinginErrorOtpImplCopyWith<T, _$SinginErrorOtpImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
