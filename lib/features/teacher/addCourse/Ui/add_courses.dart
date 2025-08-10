// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/font_style.dart';
import '../../courses/logic/courses_cubit/cubit/courser_cubit_cubit.dart';
import '../../courses/logic/courses_cubit/cubit/courser_cubit_state.dart';
import 'widget/from_course.dart';

class AddCoursesTeacher extends StatefulWidget {
  AddCoursesTeacher({super.key});

  @override
  State<AddCoursesTeacher> createState() => _AddCoursesTeacherState();
}

class _AddCoursesTeacherState extends State<AddCoursesTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CourserCubitTeacher, CourserCubitTeacherState>(
        listener: (context, state) {},
        builder: (context, state) => SingleChildScrollView(
          child: SafeArea(
              child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'إضافة كورس',
                        style: FontStyleAndText.homefont,
                      ),
                    ),
                    verticalBox(20.h),
                    FormCourses(),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
