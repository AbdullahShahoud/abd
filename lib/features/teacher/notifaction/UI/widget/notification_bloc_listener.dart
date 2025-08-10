import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_programtion/features/notification/Ui/widget/notifacation_normal.dart';
import 'package:learn_programtion/features/notification/Ui/widget/notification_normal_shimmer.dart';
import '../../logic/cubit/notification_teacher_cubit_cubit.dart';
import '../../logic/cubit/notification_teacher_cubit_state.dart';
import '../../logic/models/notification_response.dart';

class NotificationNormalBlocListenerTeacher extends StatelessWidget {
  const NotificationNormalBlocListenerTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationTeacherCubit, NotificationTeacherState>(
        // child: const SizedBox.shrink(),
        buildWhen: (previous, current) =>
            current is LoadingTC || current is SuccessTC || current is ErrorTC,
        builder: (context, state) {
          return state.maybeWhen(
            loadinTC: () {
              return loadingNotification();
            },
            successTC: (data) {
              return successNotification(data);
            },
            errorTC: (error) {
              return errorNotification();
            },
            orElse: () {
              return SizedBox.shrink();
            },
          );
        });
  }
}

Widget successNotification(List<NotificationResponse> notification) {
  return NotificationNormal(notification);
}

Widget errorNotification() {
  return Center(
    child: SvgPicture.asset('assets/svg/404error.svg'),
  );
}

Widget loadingNotification() {
  return NotificationNormallShinmmer();
}
