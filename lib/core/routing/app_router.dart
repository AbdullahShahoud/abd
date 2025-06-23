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
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/onBording/onbording_screen.dart';
import '../../features/otp/otp_ui.dart';
import '../../features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import '../../features/singin/Ui/welcame.dart';
import '../../features/notification/Ui/notification.dart';
import '../../features/profile/UI/profile.dart';
import '../../features/singin/Ui/signup.dart';
import '../../features/singin/logic/cubit/singin_cubit.dart';

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
                create: (BuildContext context) => SinginCubit(getIt(),getIt()),
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
                create: (BuildContext context) => SinginCubit(getIt(),getIt()),
                child: HomeSignIn()));
      case Routers.notification:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => ProfileAndNotificationCubit(
                    getIt(), getIt(), getIt(), getIt(), getIt(), getIt()),
                child: Notifications()));
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
      case Routers.password:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => SinginCubit(getIt(),getIt()),
                child: OTP()));
    }

    return null;
  }
}
