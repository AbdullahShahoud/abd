import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_programtion/features/teacher/notifaction/logic/cubit/notification_teacher_cubit_state.dart';

import '../models/notification_quations_response.dart';
import '../models/notification_response.dart';
import '../models/qautions_request.dart';
import '../repo/notification_quations_repo.dart';
import '../repo/notification_repo.dart';
import '../repo/send_quations_repo.dart';

class NotificationTeacherCubit extends Cubit<NotificationTeacherState> {
  NotificationTeacherCubit(
      {required this.notificationRepoTeacher,
      required this.sendQuationsRepo,
      required this.notificationQautionsRepoTeacher})
      : super(NotificationTeacherState.initialTC());
  static NotificationTeacherCubit get(context) => BlocProvider.of(context);

  NotificationRepoTeacher notificationRepoTeacher;
  TextEditingController? controllerTC;
  var keys = GlobalKey<FormState>();
  NotificationQautionsRepoTeacher notificationQautionsRepoTeacher;
  List<NotificationResponse> notification = [];
  List<NotificationQuationsResponse> notificationQuations = [];

  void emitNotification() async {
    emit(NotificationTeacherState.loadinTC());
    final response = await notificationRepoTeacher.getNotification();
    response.whenOrNull(
      success: (notificationRepo) {
        notification = notificationRepo;
        emit(NotificationTeacherState.successTC(notification));
      },
      failure: (errorHandler) {
        emit(NotificationTeacherState.errorTC(error: 'noNotification'));
      },
    );
  }

  void emitNotificationQuations() async {
    emit(NotificationTeacherState.loadinQuationsTC());
    final response =
        await notificationQautionsRepoTeacher.getNotificationQautions();
    response.whenOrNull(
      success: (notificationRepo) {
        notificationQuations = notificationRepo;
        emit(NotificationTeacherState.successQuationsTC(notificationQuations));
      },
      failure: (errorHandler) {
        emit(NotificationTeacherState.errorQuationsTC(error: 'noNotification'));
      },
    );
  }

  SendQuationsRepoTC sendQuationsRepo;

    void emitSendQuationsTC() async {
    emit(NotificationTeacherState.loadinSendQuationsTC());
    final response =
        await sendQuationsRepo.sendQuation(QuationsRequest(answer_text: controllerTC!.text) );
    response.whenOrNull(
      success: (sendRepo) {
        emit(NotificationTeacherState.successSendQuationsTC(notificationQuations));
      },
      failure: (errorHandler) {
        emit(NotificationTeacherState.errorSendQuationsTC(error: 'noNotification'));
      },
    );
  }
}
