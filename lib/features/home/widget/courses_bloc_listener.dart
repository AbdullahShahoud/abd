import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_cubit.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_state.dart';
import 'package:learn_programtion/features/courses/logic/model/courses_response.dart';
import 'package:learn_programtion/features/home/widget/category.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/routing/router.dart';
import '../../../core/theming/font_style.dart';

class CoursesBlocListenerCubit extends StatelessWidget {
  const CoursesBlocListenerCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseesCubit, CoursesState>(
        buildWhen: (previous, current) =>
            current is ListCoursesError ||
            current is ListCoursesLoading ||
            current is ListCoursesSuccess,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return SizedBox.shrink();
            },
            listCoursesSuccess: (data) {
              return successCourse(data);
            },
            listCoursesError: (error) {
              return Error();
            },
            listCoursesLoading: () {
              return loading(context);
            },
          );
        });
  }
}

Widget successCourse(List<CoursesResponse> CoursesData) {
  return CategoryCourses(CoursesData);
}

Widget Error() {
  return Center(
    child: SvgPicture.asset(
      'assets/svg/404error.svg',
      width: 100.w,
      height: 100.h,
    ),
  );
}

Widget loading(BuildContext context) {
  return Container(
    height: 600.h,
    child: ListView.builder(
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: ColorManger.lightGray,
        highlightColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(bottom: 5.h),
          child: InkWell(
            onTap: () {
              context.pushNamed(Routers.lesson);
            },
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  Stack(children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/image/unnamed.png',
                        height: 250.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    Container(
                      height: 250.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Color.fromARGB(94, 44, 44, 44),
                              Color.fromARGB(167, 56, 56, 56),
                            ],
                            stops: [
                              0.5,
                              0.3,
                            ]),
                      ),
                    ),
                    Positioned(
                        bottom: 6,
                        right: 8.w,
                        child: Column(
                            //  crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('كورس برمجة',
                                  style: FontStyleAndText.fontbold
                                      .copyWith(color: Colors.white)),
                              verticalBox(8.h),
                              Text(
                                'وائل ابو حمزة',
                                style: FontStyleAndText.fontbold
                                    .copyWith(color: Colors.white),
                              ),
                              verticalBox(8.h),
                            ]))
                  ]),
                  verticalBox(6.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Flutter عبارة عن إطار عمل مفتوح المصدر تطوّره Google وتدعمه. يستخدم مطورو الواجهة الأمامية والمطورون الشاملون Flutter لإنشاء واجهة مستخدم (UI) للتطبيق تعمل على منصات متعددة بتعليمة برمجية أساسية واحدة.',
                      style: FontStyleAndText.fontmedia,
                      textAlign: TextAlign.right,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  verticalBox(8.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'تطبيقات موبايل ',
                        textAlign: TextAlign.right,
                        style: FontStyleAndText.fontsmall,
                      ),
                    ),
                  ),
                  verticalBox(6.h),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Row(
                      children: [
                        Text(
                          'واحدات 6',
                          style: FontStyleAndText.fontsmall,
                        ),
                        Spacer(),
                        Text(
                          'مدة الكورس 15 يوم',
                          style: FontStyleAndText.fontsmall,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      itemCount: 5,
      scrollDirection: Axis.vertical,
    ),
  );
}
