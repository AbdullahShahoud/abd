import 'package:flutter/material.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/features/teacher/courses/Ui/widget/category_courses_teacher.dart';
import 'package:learn_programtion/features/teacher/courses/Ui/widget/courses_bloc_listener.dart';
import '../../../../core/routing/router.dart';
import 'widget/tab_bar_home_tc.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(Routers.add_courses);
        },
        backgroundColor: ColorManger.primary_ColorBlue,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            TabBarhomeTeacher(),
            // CategoryCoursesTeacher(getSampleCourses),
            CoursesBlocListenerCubit()
          ],
        ),
      )),
    );
  }
}
