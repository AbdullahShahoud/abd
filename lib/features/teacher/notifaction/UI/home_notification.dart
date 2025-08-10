import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/features/teacher/notifaction/UI/widget/notification_bloc_listener.dart';
import '../../../../core/DI/dependency_injection.dart';
import '../logic/cubit/notification_teacher_cubit_cubit.dart';
import 'widget/notification_quations_bloc_listener.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationsState();
}

class _NotificationsState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationTeacherCubit(
          notificationRepoTeacher: getIt(),
          notificationQautionsRepoTeacher: getIt(),
          sendQuationsRepo: getIt())
        ..emitNotification()
        ..emitNotificationQuations(),
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
              NotificationNormalBlocListenerTeacher(),
              NotificationQuestionTeacherListener()
            ],
          ),
        ),
      ),
    );
  }
}
