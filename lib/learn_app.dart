// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/DI/dependency_injection.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_cubit.dart';
import 'package:learn_programtion/main.dart';
import 'core/routing/app_router.dart';
import 'core/routing/router.dart';

class LearnApp extends StatelessWidget {
  LearnApp();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(412, 915),
        minTextAdapt: true,
        child: BlocProvider(
          create: (context) => CourseesCubit(
            getIt(),
            getIt(),
            getIt(),
            getIt(),
            getIt(),
            getIt(),
            getIt(),
            getIt(),
          ),
          child: MaterialApp(
            title: 'LearnProgram',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                // primaryColor: Colors.blue,
                // scaffoldBackgroundColor: Colors.white,
                fontFamily: 'Alexandria'),
            initialRoute: LoginUser ? Routers.home_page : Routers.onbording,
            onGenerateRoute: AppRouters.generateRoute,
          ),
        ));
  }
}
