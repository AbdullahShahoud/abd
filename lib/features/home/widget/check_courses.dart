// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_cubit.dart';
import 'package:learn_programtion/features/home/widget/your_courses.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/routing/router.dart';
import '../../../core/theming/font_style.dart';
import '../../courses/logic/cubit/cubit/coursees_state.dart';
import '../../courses/logic/model/courses_response.dart';

class CheckCourse extends StatefulWidget {
  List<CoursesResponse> coursesData;
  CheckCourse(this.coursesData);

  @override
  State<CheckCourse> createState() => _CheckCourseState();
}

class _CheckCourseState extends State<CheckCourse> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseesCubit, CoursesState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12.w, left: 10.w),
              child: Text(
                'يوصى بها',
                style: FontStyleAndText.fontbold,
              ),
            ),
            verticalBox(5.h),
            Container(
              height: 150.h,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: InkWell(
                    onTap: () {
                      final course = CourseesCubit.get(context).courses[index];
                      CourseesCubit.get(context).selectCourse(course);
                      context.pushNamed(Routers.course_level);
                    },
                    child: YourCourses(
                        context: context,
                        image: widget.coursesData[index].image,
                        name: widget.coursesData[index].name,
                        nameteatcher: widget.coursesData[index].nameTeacher,
                        type: widget.coursesData[index].type,
                        time: widget.coursesData[index].time),
                  ),
                ),
                itemCount: widget.coursesData.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        );
      },
    );
  }
}
