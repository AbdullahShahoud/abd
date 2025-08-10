import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/core/theming/font_style.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_cubit.dart';
import 'package:learn_programtion/features/widget/button.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/router.dart';
import '../../logic/cubit/cubit/coursees_state.dart';
import '../../widget/finish_course_bloc_listener.dart';
import '../../widget/finish_test_bloc_Listener.dart';
import '../../widget/quation_item.dart';

class QuestionFinaly extends StatefulWidget {
  const QuestionFinaly({super.key});

  @override
  State<QuestionFinaly> createState() => _QuestionFinalyState();
}

class _QuestionFinalyState extends State<QuestionFinaly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('الاختبار النهائي'),
        ),
        body: BlocBuilder<CourseesCubit, CoursesState>(
          builder: (context, state) {
            final test = CourseesCubit.get(context).seletCourseMe?.finalTest;
            return SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                  QuationItem(test!),
                  verticalBox(10.h),
                  FinishTestBlocListener(),
                  FinishCourseBlocListener(),
                  button(
                      text: 'النتيجة',
                      paddingV: 16.h,
                      paddingH: 140.w,
                      function: () {
                        // CourseesCubit.get(context).emitFinishTest();
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text('النتيجة'),
                                  content: Container(
                                      height: 220.h,
                                      child: Column(
                                        children: [
                                          Text(
                                            '''لقد حصلت عل
                                              00 ''',
                                            textDirection: TextDirection.rtl,
                                            style: FontStyleAndText.fontmedia,
                                          ),
                                          verticalBox(35.h),
                                          button(
                                              text: 'موافق',
                                              paddingH: 50.w,
                                              paddingV: 17.h,
                                              function: () {
                                                CourseesCubit.get(context)
                                                    .emitFinishCourse();
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
                                                                      'تم إنهاء الكورس بنجاح',
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
                                                                              .pushNamed(Routers.home_page);
                                                                        })
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
