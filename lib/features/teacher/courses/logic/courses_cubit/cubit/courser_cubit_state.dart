// part of 'courser_cubit_cubit.dart';

// @immutable
// sealed class CourserCubitState {}

// final class CourserCubitInitial extends CourserCubitState {}
import 'package:freezed_annotation/freezed_annotation.dart';
part 'courser_cubit_state.freezed.dart';

@freezed
class CourserCubitTeacherState<T> with _$CourserCubitTeacherState<T> {
  const factory CourserCubitTeacherState.initialCourses() = _InitialCourses;
  const factory CourserCubitTeacherState.loadinCourses() = LoadingCourses;
  const factory CourserCubitTeacherState.successCourses(T data) = SuccessCourses<T>;
  const factory CourserCubitTeacherState.errorCourses({required String error}) = ErrorCourses;
}
