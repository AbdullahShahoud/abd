import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_teacher_cubit_state.freezed.dart';

@freezed
class NotificationTeacherState<T> with _$NotificationTeacherState<T> {
  const factory NotificationTeacherState.initialTC() = _InitialTC;
  const factory NotificationTeacherState.loadinTC() = LoadingTC;
  const factory NotificationTeacherState.successTC(T data) = SuccessTC<T>;
  const factory NotificationTeacherState.errorTC({required String error}) =
      ErrorTC;

       const factory NotificationTeacherState.initialQuationsTC() = _InitialQuationsTC;
  const factory NotificationTeacherState.loadinQuationsTC() = LoadingQuationsTC;
  const factory NotificationTeacherState.successQuationsTC(T data) = SuccessQuationsTC<T>;
  const factory NotificationTeacherState.errorQuationsTC({required String error}) =
      ErrorQuationsTC;
             const factory NotificationTeacherState.initialSendQuationsTC() = _InitialSendQuationsTC;
  const factory NotificationTeacherState.loadinSendQuationsTC() = LoadingSendQuationsTC;
  const factory NotificationTeacherState.successSendQuationsTC(T data) = SuccessSendQuationsTC<T>;
  const factory NotificationTeacherState.errorSendQuationsTC({required String error}) =
      ErrorSendQuationsTC;
}
