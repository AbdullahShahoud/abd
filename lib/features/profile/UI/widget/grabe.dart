import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/DI/dependency_injection.dart';
import 'package:learn_programtion/core/helper/spacing.dart';
import 'package:learn_programtion/core/theming/font_style.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import 'package:learn_programtion/features/profile/UI/widget/grade_bloc_listener.dart';

import '../../../../core/theming/color.dart';
import '../../../widget/button.dart';

class Grade extends StatefulWidget {
  const Grade({super.key});

  @override
  State<Grade> createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(13.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: ColorManger.primary_ColorBlue),
        child: Column(children: [
          Text(
            'الشهادات',
            style: FontStyleAndText.fontbold,
          ),
          verticalBox(40.h),
          Container(
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8.h),
            height: 60.h,
            decoration: BoxDecoration(
              color: ColorManger.primary_ColorYello,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              textDirection: TextDirection.rtl,
              'كورس برمجة الويب',
              style: FontStyleAndText.textfrom,
            ),
          ),
          verticalBox(20.h),
          button(
              text: 'عرض الكل',
              paddingV: 10.h,
              paddingH: 40.w,
              function: () {
                context.read<ProfileAndNotificationCubit>().emiteViewGrade();
                showModalBottomSheet(
                    context: context,
                    backgroundColor: ColorManger.primary_ColorBlue,
                    builder: ((context) {
                      return BlocProvider(
                        create: (context) => ProfileAndNotificationCubit(
                          getIt(),
                          getIt(),
                          getIt(),
                          getIt(),
                          getIt(),
                          getIt(),
                        ),
                        child: GradeBlocListener(),
                      );
                    }));
              })
        ]));
  }
}
