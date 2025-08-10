import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/helper/spacing.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_cubit.dart';

import '../../../../core/routing/router.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/font_style.dart';
import '../../../widget/button.dart';
import '../../logic/cubit/cubit/coursees_state.dart';
import '../../widget/finish_test_bloc_Listener.dart';
import '../../widget/quation_item.dart';

class QuationLevel extends StatelessWidget {
  const QuationLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('الاختبار'),
        ),
        body: BlocBuilder<CourseesCubit, CoursesState>(
          builder: (context, state) {
            final testLevel =
                CourseesCubit.get(context).seletCourseMe?.finalTest;
            // CourseesCubit.get(context).selectedlevelMe?.test;
            return SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        textDirection: TextDirection.rtl,
                        'وقت هذالامتحان 10 دقائق',
                        textAlign: TextAlign.right,
                        style: FontStyleAndText.fontmedia
                            .copyWith(color: ColorManger.primary_ColorBlue),
                      ),
                    ),
                  ),
                  verticalBox(5.h),
                  QuationItem(testLevel!),
                  verticalBox(10.h),
                  FinishTestBlocListener(),
                  button(
                      text: 'النتيجة',
                      paddingV: 16.h,
                      paddingH: 140.w,
                      function: () {
                        // CourseesCubit.get(context).accountDagre();
                        // CourseesCubit.get(context).emitFinishTest();
                        // if (CourseesCubit.get(context).accountDagre() >
                        //     (CourseesCubit.get(context).accountDagre() / 2)) {
                        //   CourseesCubit.get(context).emitFinishTest();
                        // }
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text(
                                    'النتيجة',
                                    textAlign: TextAlign.center,
                                  ),
                                  content: Container(
                                      height: 220.h,
                                      child: Column(
                                        children: [
                                          Text(
                                            '''لقد حصلت عل
                                           00000''',
                                            textDirection: TextDirection.rtl,
                                            style: FontStyleAndText.fontmedia,
                                          ),
                                          verticalBox(35.h),
                                          button(
                                              text: 'موافق',
                                              paddingH: 50.w,
                                              function: () {
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (context) =>
                                                            AlertDialog(
                                                              content:
                                                                  Container(
                                                                height: 200.h,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .lock_open_rounded,
                                                                      size: 40,
                                                                      color: Colors
                                                                          .green,
                                                                    ),
                                                                    verticalBox(
                                                                        15.h),
                                                                    Text(
                                                                      'تم إنهاءالمستوى بنجاح',
                                                                      style: FontStyleAndText
                                                                          .fontmedia,
                                                                    ),
                                                                    verticalBox(
                                                                        10.h),
                                                                    button(
                                                                        paddingH: 30
                                                                            .w,
                                                                        text:
                                                                            'موافق',
                                                                        function:
                                                                            () {
                                                                          context
                                                                              .pushNamed(Routers.levelMe);
                                                                        }),
                                                                    // FinishTestBlocListener(),
                                                                  ],
                                                                ),
                                                              ),
                                                            ));
                                              })
                                        ],
                                      )),
                                ));
                      })
                ],
              )),
            );
          },
        ));
  }
}
