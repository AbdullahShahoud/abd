import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_and_notification_state.freezed.dart';

@freezed
class ProfileAndNotificationState<T> with _$ProfileAndNotificationState<T> {
  const factory ProfileAndNotificationState.initial() = _Initial;
  const factory ProfileAndNotificationState.loading() = Loading;
  const factory ProfileAndNotificationState.success(T data) = Success<T>;
  const factory ProfileAndNotificationState.error({required String error}) =
      Error;
}
