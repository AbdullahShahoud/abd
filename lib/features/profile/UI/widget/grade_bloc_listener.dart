import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_state.dart';
import 'package:learn_programtion/features/profile/UI/widget/gride_item.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/font_style.dart';

class GradeBlocListener extends StatelessWidget {
  const GradeBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileAndNotificationCubit,
            ProfileAndNotificationState>(
        buildWhen: (previous, current) =>
            current is LoadingGrade ||
            current is SuccessGrade ||
            current is ErrorGrade,
        builder: ((context, state) {
          return state.maybeWhen(successGrade: (data) {
            return gradeSuccess(data);
          }, errorGrade: (error) {
            return AlertDialog(
              content: Text(
                '${error}',
                textDirection: TextDirection.rtl,
                style: FontStyleAndText.font_big,
              ),
              icon: Icon(
                Icons.error,
                size: 50,
                color: Colors.red,
              ),
              actions: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManger.primary_ColorBlue),
                    onPressed: () {
                      context.pop();
                      context.pop();
                    },
                    child: Text(
                      'حسناً',
                    ))
              ],
            );
          }, orElse: () {
            return SizedBox.shrink();
          });
        }));
  }
}

Widget gradeSuccess(List<String> grade) {
  return Container(
    height: 800.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'الشهادات',
            style: FontStyleAndText.fontbold,
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 14.w, left: 14.w),
          height: 400.h,
          child: ListView.builder(
            itemCount: grade.length,
            itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: GradeItem(context, grade[index])),
          ),
        ),
      ],
    ),
  );
}

void errorGrade(BuildContext context, String error) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Text(
              '${error}',
              textDirection: TextDirection.rtl,
              style: FontStyleAndText.font_big,
            ),
            icon: Icon(
              Icons.error,
              size: 50,
              color: Colors.red,
            ),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManger.primary_ColorBlue),
                  onPressed: () {
                    context.pop();
                    context.pop();
                  },
                  child: Text(
                    'حسناً',
                  ))
            ],
          ));
}
