import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import 'package:learn_programtion/features/books/logic/repo/book_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/check_course_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/courser_me_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/courses_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/delet_course_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/finish_course_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/finish_lesson_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/finish_test_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/send_quation_repo.dart';
import 'package:learn_programtion/features/login/logic/cubit/login_cubit.dart';
import 'package:learn_programtion/features/login/logic/repo/login_repo.dart';
import 'package:learn_programtion/features/notification/logic/repo/notification_repo.dart';
import 'package:learn_programtion/features/singin/logic/cubit/singin_cubit.dart';
import 'package:learn_programtion/features/singin/logic/repo/singin_repo.dart';

import '../../features/otp/logic/repo/otp_repo.dart';
import '../../features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import '../../features/profile/logic/repo/change_email_repo.dart';
import '../../features/profile/logic/repo/change_password_repo.dart';
import '../../features/profile/logic/repo/delet_repo.dart';
import '../../features/profile/logic/repo/view_grade_repo.dart';
import '../network/dio.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerLazySingleton<SinginRepo>(() => SinginRepo(getIt()));
  getIt.registerFactory<SinginCubit>(() => SinginCubit(getIt(), getIt()));

  getIt.registerLazySingleton<OtpRepo>(() => OtpRepo(getIt()));
  getIt
      .registerLazySingleton<NotificationRepo>(() => NotificationRepo(getIt()));
  getIt.registerLazySingleton<BookRepo>(() => BookRepo(getIt()));

  getIt.registerLazySingleton<ChangeEmailRepo>(() => ChangeEmailRepo(getIt()));
  getIt.registerLazySingleton<ProfileRepoPassword>(
      () => ProfileRepoPassword(getIt()));
  getIt.registerLazySingleton<ViewGradeRepo>(() => ViewGradeRepo(getIt()));
  getIt.registerFactory<ProfileAndNotificationCubit>(() =>
      ProfileAndNotificationCubit(
          getIt(), getIt(), getIt(), getIt(), getIt(), getIt()));

  getIt.registerLazySingleton<CoursesRepo>(() => CoursesRepo(getIt()));
  getIt.registerLazySingleton<CoursesMeRepo>(() => CoursesMeRepo(getIt()));
  getIt.registerLazySingleton<CheckCourseRepo>(() => CheckCourseRepo(getIt()));
  getIt
      .registerLazySingleton<SendQuationsRepo>(() => SendQuationsRepo(getIt()));
  getIt.registerLazySingleton<FinishTestRepo>(() => FinishTestRepo(getIt()));
  getIt
      .registerLazySingleton<FinishLessonRepo>(() => FinishLessonRepo(getIt()));
  getIt
      .registerLazySingleton<FinishCourseRepo>(() => FinishCourseRepo(getIt()));
  getIt
      .registerLazySingleton<DeletCoursenRepo>(() => DeletCoursenRepo(getIt()));
  getIt.registerLazySingleton<DeletRepo>(() => DeletRepo(getIt()));
}
