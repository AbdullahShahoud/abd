import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_programtion/features/notification/Ui/widget/notification_quation_shimmer.dart';
import 'package:learn_programtion/features/teacher/notifaction/UI/widget/notification_quations.dart';
import '../../logic/cubit/notification_teacher_cubit_cubit.dart';
import '../../logic/cubit/notification_teacher_cubit_state.dart';
import '../../logic/models/notification_quations_response.dart';

List<NotificationQuationsResponse> sampleNotifications = [
  NotificationQuationsResponse(
    id: 1,
    course: 101,
    course_title: "Flutter المتقدم",
    lesson: 5,
    lesson_title: "حالة التطبيق (State Management)",
    question_text: "ما الفرق بين Provider و Bloc؟",
    answer_text:
        "Provider يعتمد على InheritedWidget بينما Bloc يستخدم Streams.",
    answered: true,
  ),
  NotificationQuationsResponse(
    id: 2,
    course: 102,
    course_title: "Python للتحليل البيانات",
    lesson: 3,
    lesson_title: "مكتبة Pandas",
    question_text: "كيفة تصفية البيانات في DataFrame؟",
    answer_text: null,
    answered: false,
  ),
  NotificationQuationsResponse(
    id: 3,
    course: 103,
    course_title: "التصميم الجرافيكي",
    lesson: 2,
    lesson_title: "أدوبي فوتوشوب",
    question_text: "ما أفضل طريقة لإنشاء تأثير الظل؟",
    answer_text:
        "استخدم Layer Styles ثم Drop Shadow مع ضبط Opacity و Distance.",
    answered: true,
  ),
  NotificationQuationsResponse(
    id: 4,
    course: 104,
    course_title: "تعلم الإنجليزية",
    lesson: 7,
    lesson_title: "القواعد المتقدمة",
    question_text: "متى نستخدم Present Perfect؟",
    answer_text: null,
    answered: false,
  ),
  NotificationQuationsResponse(
    id: 5,
    course: 105,
    course_title: "التسويق الرقمي",
    lesson: 4,
    lesson_title: "إعلانات فيسبوك",
    question_text: "ما أفضل وقت لنشر الإعلانات؟",
    answer_text: "بين 7-9 مساءً حسب دراساتنا الأخيرة.",
    answered: true,
  ),
];

class NotificationQuestionTeacherListener extends StatelessWidget {
  const NotificationQuestionTeacherListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationTeacherCubit, NotificationTeacherState>(
        buildWhen: (previous, current) =>
            current is LoadingQuationsTC ||
            current is SuccessQuationsTC ||
            current is ErrorQuationsTC,
        builder: (context, state) {
          return state.maybeWhen(successQuationsTC: (data) {
            return successQuestion(data);
          }, errorQuationsTC: (error) {
            return successQuestion(sampleNotifications);
            // return errorQuestion();
          }, loadinQuationsTC: () {
            return loadingQuestion();
          }, orElse: () {
            return SizedBox.shrink();
          });
        });
  }
}

Widget successQuestion(List<NotificationQuationsResponse> questionAndResponse) {
  return NotificationQuationsTeacher(question: questionAndResponse);
}

Widget errorQuestion() {
  return Center(
    child: SvgPicture.asset('assets/svg/404error.svg'),
  );
}

Widget loadingQuestion() {
  return NotificationQuestionShimmer();
}
