import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';

import '../../../core/DI/dependency_injection.dart';
import 'widget/notification_normal_bloc_listener.dart';
import 'widget/notification_question_bloc-listener.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileAndNotificationCubit(getIt(), getIt(),
          getIt(), getIt(), getIt(), getIt(), getIt(), getIt())
        ..emitNotificationAlert()
        ..emitNotificationQuation(),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: ColorManger.backgroundPage,
          appBar: AppBar(
            title: Text('الاشعارات'),
            backgroundColor: ColorManger.primary_ColorBlue,
            bottom: TabBar(
              labelStyle:
                  TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w300),
              labelColor: ColorManger.primary_ColorYello,
              tabs: [
                Tab(
                  child: Text('الاشعارات'),
                ),
                Tab(
                  child: Text('الاسئلة'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              NotificationNormalBlocListener(),
              NotificationQuestionListener()
            ],
          ),
        ),
      ),
    );
  }
}
