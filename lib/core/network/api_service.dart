import 'package:learn_programtion/features/books/logic/model/book_response.dart';
import 'package:learn_programtion/features/courses/logic/model/courses_response.dart';
import 'package:learn_programtion/features/courses/logic/model/finish_lesson_ruqest.dart';
import 'package:retrofit/retrofit.dart';
import 'package:learn_programtion/core/network/api_constant.dart';
import 'package:dio/dio.dart';

import '../../features/courses/logic/model/check_course_response.dart';
import '../../features/courses/logic/model/check_course_ruqest.dart';
import '../../features/courses/logic/model/courses_me_response.dart';
import '../../features/courses/logic/model/delet_course_response.dart';
import '../../features/courses/logic/model/delet_course_ruqest.dart';
import '../../features/courses/logic/model/finish_coures_ruqest.dart';
import '../../features/courses/logic/model/finish_course_response.dart';
import '../../features/courses/logic/model/finish_lesson_response.dart';
import '../../features/courses/logic/model/finish_test_request.dart';
import '../../features/courses/logic/model/finish_test_response.dart';
import '../../features/courses/logic/model/send_qaustion_request.dart';
import '../../features/courses/logic/model/send_qaustion_response.dart';
import '../../features/login/logic/model/login_request.dart';
import '../../features/login/logic/model/login_response.dart';
import '../../features/notification/logic/model/notification_response.dart';
import '../../features/profile/logic/model/changEmail/chang_email_request.dart';
import '../../features/profile/logic/model/changEmail/chang_email_response.dart';
import '../../features/profile/logic/model/changePassord/chang_password_request.dart';
import '../../features/profile/logic/model/changePassord/change_password_response.dart';
import '../../features/profile/logic/model/delet_user_response.dart';
import '../../features/profile/logic/model/delet_user_ruqest.dart';
import '../../features/profile/logic/model/viewGrade/view_grade.dart';
import '../../features/singin/logic/model/singin_reqest.dart';
import '../../features/singin/logic/model/singin_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.BaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.Login)
  Future<LoginResponse> login(
    @Body() LoginRequest loginRequest,
  );

  @POST(ApiConstant.Signup)
  Future<SinginResponse> signup(
    @Body() SinginRequest signupRequest,
  );

  @GET(ApiConstant.Book)
  Future<BookResponse> getBook();

  @GET(ApiConstant.Notifications)
  Future<NotificationResponse> getNotification();

  @POST(ApiConstant.ProfileChangeEmail)
  Future<ChangeEmailResponse> changeEmail(
    @Body() ChangeEmailRequest changeEmailRequest,
  );

  @POST(ApiConstant.ProfileChangePassword)
  Future<ChangePasswordResponse> changePassword(
    @Body() ChangePasswordRequest changePasswordRequest,
  );

  @GET(ApiConstant.ProfileViewGrade)
  Future<GradeRespons> getView();

  @GET(ApiConstant.Courses)
  Future<List<CoursesResponse>> getCourses();

  @GET(ApiConstant.CoursesMe)
  Future<List<CoursesMeResponse>> getCoursesMe();

  @POST(ApiConstant.CheckCourse)
  Future<CheckCourseResponse> checkCourse(
    @Body() CheckCourseRuqest checkCourse,
  );

  @POST(ApiConstant.FinishCourse)
  Future<FinishCourseResponse> finishCourse(
    @Body() FinishCourseRuqest finishCourse,
  );

  @POST(ApiConstant.FinishTest)
  Future<FinishTestResponse> finishedTest(
    @Body() FinishedTestRuqest finishedTest,
  );

  @POST(ApiConstant.SendQaution)
  Future<SendQautionReesponse> sendQautions(
    @Body() SendQautionsRuqest sendQautions,
  );

  @POST(ApiConstant.FinishLeson)
  Future<FinishLessonResponse> finishLesson(
    @Body() FinishLessonRuqest sendQautions,
  );

  @DELETE(ApiConstant.DeletCourse)
  Future<DeletCourseResponse> deletCourse(
    @Body() DeletCourseRuqest deletCourseRuqest,
  );
  @DELETE(ApiConstant.DeletUesr)
  Future<UserDeletResponse> deletUser(
    @Body() DeletUserRuqest deletUserRuqest,
  );
//   @POST(ApiConstant.DeletCourse)
//   Future<DeletCourseResponse> deletUser(
//       @Body() DeletCourseRuqest deletCourseRuqest,);
}
