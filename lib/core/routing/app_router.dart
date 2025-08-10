import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_programtion/core/DI/dependency_injection.dart';
import 'package:learn_programtion/core/routing/router.dart';
import '../../features/courses/UI/courses/course_introdication.dart';
import '../../features/courses/UI/coursesMe/lessonBodyMe.dart';
import '../../features/courses/UI/coursesMe/lesson_itro_me.dart';
import '../../features/courses/UI/coursesMe/lessonsMe.dart';
import '../../features/courses/UI/courses/level.dart';
import '../../features/courses/UI/coursesMe/levelMe.dart';
import '../../features/courses/UI/coursesMe/quation.dart';
import '../../features/courses/UI/coursesMe/question_finaly.dart';
import '../../features/home/UI/home.dart';
import '../../features/home/UI/home_page.dart';
import '../../features/courses/UI/courses_all.dart';
import '../../features/login/Ui/login.dart';
import '../../features/login/forgetPassword/Ui/forget_password_confirm.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/otp/otp_ui.dart';
import '../../features/onBording/onbording_screen.dart';
import '../../features/singin/Ui/welcame.dart';
import '../../features/profile/UI/profile.dart';
import '../../features/singin/Ui/signup.dart';
import '../../features/singin/logic/cubit/singin_cubit.dart';
import '../../features/teacher/addCourse/Ui/add_courses.dart';
import '../../features/teacher/courses/Ui/lesson_body_tc.dart';
import '../../features/teacher/courses/Ui/lesson_teacher.dart';
import '../../features/teacher/courses/Ui/test_teacher.dart';
import '../../features/teacher/courses/Ui/level_teacher.dart';
import '../../features/teacher/courses/logic/courses_cubit/cubit/courser_cubit_cubit.dart';
import '../../features/teacher/home_Teacher/Ui/home_page_teacher.dart';

class AppRouters {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.home:
        return MaterialPageRoute(builder: (context) => Home());
      case Routers.home_page:
        return MaterialPageRoute(builder: (context) => HomePage());
      case Routers.Welcome:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => SinginCubit(getIt()),
                child: Welcome()));
      case Routers.profile:
        return MaterialPageRoute(builder: (context) => Profile());
      case Routers.login:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => getIt<LoginCubit>(),
                child: HomeLogin()));
      case Routers.singin:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => SinginCubit(getIt()),
                child: HomeSignIn()));
      case Routers.onbording:
        return MaterialPageRoute(builder: (context) => OnBoriding());
      case Routers.courses_all:
        return MaterialPageRoute(builder: (context) => CoursesAll());
      case Routers.lesson_intro_Me:
        return MaterialPageRoute(builder: (context) => LessonsIntrodactionMe());
      case Routers.questionsFinaly:
        return MaterialPageRoute(builder: (context) => QuestionFinaly());
      case Routers.questions:
        return MaterialPageRoute(builder: (context) => QuationLevel());
      case Routers.levelMe:
        return MaterialPageRoute(builder: (context) => LevelesMe());
      case Routers.course_level:
        return MaterialPageRoute(builder: (context) => CoursesLevel());
      case Routers.lessonMe:
        return MaterialPageRoute(builder: (context) => LessonsMe());
      case Routers.lessonBodyMe:
        return MaterialPageRoute(builder: (context) => LessonBodyMe());
      case Routers.introdactionCourse:
        return MaterialPageRoute(builder: (context) => CourseIntrodaction());
      case Routers.confirmPassword:
        return MaterialPageRoute(builder: (context) => ForgetPasswordConfirm());
      case Routers.otp:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => getIt<LoginCubit>(),
                child: OTPLogin()));

// **********************************************************************************************************
      case Routers.home_page_teacher:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) =>
                    getIt<CourserCubitTeacher>()..emitCoursesTeacher(),
                child: HomePageTeacher()));
      case Routers.level_teacher:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => getIt<CourserCubitTeacher>(),
                child: LevelsTeacher()));
      case Routers.level_teacher:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => getIt<CourserCubitTeacher>(),
                child: TestTeacher()));
      case Routers.level_teacher:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => getIt<CourserCubitTeacher>(),
                child: LessonBodyTeacher()));
      case Routers.level_teacher:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => getIt<CourserCubitTeacher>(),
                child: LessonTeacher()));
      case Routers.add_courses:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => getIt<CourserCubitTeacher>(),
                child: AddCoursesTeacher()));
    }

    return null;
  }
}
