import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_programtion/features/notification/Ui/widget/notification_quation.dart';
import 'package:learn_programtion/features/notification/Ui/widget/notification_quation_shimmer.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_state.dart';

import '../../logic/model/notification_question_response.dart';

class NotificationQuestionListener extends StatelessWidget {
  const NotificationQuestionListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileAndNotificationCubit,
            ProfileAndNotificationState>(
        buildWhen: (previous, current) =>
            current is LoadingNotificationQuation ||
            current is SuccessNotificationQuation ||
            current is ErrorNotificationQuation,
        builder: (context, state) {
          return state.maybeWhen(successNotificationQuation: (data) {
            return successQuestion(data);
          }, errorNotificationQuation: (error) {
            return errorQuestion();
          }, loadingNotificationQuation: () {
            return loadingQuestion();
          }, orElse: () {
            return SizedBox.shrink();
          });
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
