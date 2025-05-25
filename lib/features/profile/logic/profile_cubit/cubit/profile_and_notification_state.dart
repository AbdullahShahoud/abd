import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_and_notification_state.freezed.dart';

@freezed
class ProfileAndNotificationState<T> with _$ProfileAndNotificationState<T> {
  const factory ProfileAndNotificationState.initial() = _Initial;
  const factory ProfileAndNotificationState.loadingSecurite() = LoadingSecurite;
  const factory ProfileAndNotificationState.successSecurite(T data) =
      SuccessSecurite<T>;
  const factory ProfileAndNotificationState.errorSecurite(
      {required String error}) = ErrorSecurite;

  const factory ProfileAndNotificationState.loadingPersoinInformation() =
      LoadingPersoinInformation;
  const factory ProfileAndNotificationState.successPersoinInformation(T data) =
      SuccessPersoinInformation<T>;
  const factory ProfileAndNotificationState.errorPersoinInformation(
      {required String error}) = ErrorPersoinInformation;

  const factory ProfileAndNotificationState.loadingGrade() = LoadingGrade;
  const factory ProfileAndNotificationState.successGrade(T data) =
      SuccessGrade<T>;
  const factory ProfileAndNotificationState.errorGrade(
      {required String error}) = ErrorGrade;

  const factory ProfileAndNotificationState.loadingDelete() = LoadingDelete;
  const factory ProfileAndNotificationState.successDelete(T data) =
      SuccessDelete<T>;
  const factory ProfileAndNotificationState.errorDelete(
      {required String error}) = ErrorDelete;

       const factory ProfileAndNotificationState.loadingNotificationNormal() = LoadingNotificationNormal;
  const factory ProfileAndNotificationState.successNotificationNormal(T data) =
      SuccessNotificationNormal<T>;
       const factory ProfileAndNotificationState.successNotificationQuestion(T data) =
      SuccessNotificationQuestion<T>;
  const factory ProfileAndNotificationState.errorNotificationNormal(
      {required String error}) = ErrorNotificationNormal;

        const factory ProfileAndNotificationState.loadingBook() = LoadingBook;
  const factory ProfileAndNotificationState.successBook(T data) =
      SuccessBook<T>;
  const factory ProfileAndNotificationState.errorBook(
      {required String error}) = ErrorBook;
}
