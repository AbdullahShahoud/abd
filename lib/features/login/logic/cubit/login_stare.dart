import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_stare.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.successMs(T data) = SuccessMs<T>;
  const factory LoginState.error({required String error}) = Error;

  const factory LoginState.loadingOtp() = LoadingOtp;
  const factory LoginState.successOtp(T data) = SuccessOtp<T>;
  const factory LoginState.errorOtp({required String error}) = ErrorOtp;

  
  const factory LoginState.loadingForget() = LoadingForget;
  const factory LoginState.successForget(T data) = SuccessForget<T>;
  const factory LoginState.errorForget({required String error}) = ErrorForget;


  const factory LoginState.loadingForgetConfirme() = LoadingForgetConfirme;
  const factory LoginState.successForgetConfirme(T data) = SuccessForgetConfirme<T>;
  const factory LoginState.errorForgetConfirme({required String error}) = ErrorForgetConfirme;


}
