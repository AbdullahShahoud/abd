import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/routing/router.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_cubit.dart';
import 'package:learn_programtion/features/widget/button.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/font_style.dart';
import '../../logic/cubit/cubit/coursees_state.dart';
import '../../widget/delet_course_bloc.dart';
import '../../widget/level_item_me.dart';
import '../../widget/tab_bar_course.dart';

class LevelesMe extends StatelessWidget {
  const LevelesMe({super.key});

  @override
  Widget build(BuildContext context) {
    final courseMe = context.read<CourseesCubit>().seletCourseMe;
    if (courseMe == null) {
      return Scaffold(
        body: Center(child: Text('لا يوجد كورس محدد')),
      );
    }
    return Scaffold(
        body: BlocConsumer<CourseesCubit, CoursesState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
              TabBarCourse(image: courseMe.image!, name: courseMe.name!),
              verticalBox(8.h),
              DeletCourseBlocListener(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          CourseesCubit.get(context).emitdeletCourses();
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 35,
                          color: Colors.red,
                        )),
                    Spacer(),
                    Text('المستويات', style: FontStyleAndText.fontbold),
                  ],
                ),
              ),
              Container(
                height: 540.h,
                child: ListView.builder(
                    itemCount: courseMe.level.length,
                    itemBuilder: (context, index) {
                      final level = courseMe.level[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: InkWell(
                          onTap: () {
                            context.read<CourseesCubit>().selectLevelMe(level);
                            context.pushNamed(Routers.lessonMe);
                          },
                          child: LevelItemMe(
                            image: courseMe.image!,
                            name: courseMe.level[index].name,
                            finished: courseMe.level[index].finished,
                          ),
                        ),
                      );
                    }),
              ),
              verticalBox(10.h),
              Center(
                child: button(
                    text: 'الاختبار النهائي',
                    paddingV: 17.h,
                    function: () {
                      context.pushNamed(Routers.questionsFinaly);
                    }),
              )
            ])));
      },
    ));
  }
}
