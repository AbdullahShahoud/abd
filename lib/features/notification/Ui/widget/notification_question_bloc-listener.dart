import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_programtion/features/notification/Ui/widget/notification_quation.dart';
import 'package:learn_programtion/features/notification/Ui/widget/notification_quation_shimmer.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_state.dart';

import '../../logic/model/notification_response.dart';

class NotificationQuestionListener extends StatelessWidget {
  const NotificationQuestionListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileAndNotificationCubit,
            ProfileAndNotificationState>(
        child: const SizedBox.shrink(),
        listenWhen: (previous, current) =>
            current is LoadingNotificationNormal ||
            current is SuccessNotificationQuestion ||
            current is ErrorNotificationNormal,
        listener: (context, state) {
          state.maybeWhen(
              successNotificationQuestion: (data) {
                successQuestion(data);
              },
              errorNotificationNormal: (error) {
                errorQuestion();
              },
              loadingNotificationNormal: () {
                loadingQuestion();
              },
              orElse: () {});
        });
  }
}

Widget successQuestion(List<QuestionAndResponse> questionAndResponse) {
  return NotificationQuations(questionAndResponse);
}

Widget errorQuestion() {
  return Center(
    child: SvgPicture.asset('assets/svg/404error.svg'),
  );
}

Widget loadingQuestion() {
  return NotificationQuestionShimmer();
}
