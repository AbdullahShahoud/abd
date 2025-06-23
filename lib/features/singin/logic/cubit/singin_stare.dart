import 'package:freezed_annotation/freezed_annotation.dart';

part 'singin_stare.freezed.dart';

@freezed
class SinginState<T> with _$SinginState<T> {
  const factory SinginState.initial() = _SinginInitial;
  const factory SinginState.loading() = SinginLoading;
  const factory SinginState.success(T data) = SinginnSuccess<T>;
  const factory SinginState.error({required String error}) = SinginError;

 const factory SinginState.loadingOtp() = SinginLoadingOtp;
  const factory SinginState.successOtp(T data) = SinginnSuccessOtp<T>;
  const factory SinginState.errorOtp({required String error}) = SinginErrorOtp;
}
