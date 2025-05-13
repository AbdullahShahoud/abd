import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/data.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_cubit.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_state.dart';
import 'package:learn_programtion/features/home/widget/check_courses.dart';
import 'package:learn_programtion/features/home/widget/your_courses.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/font_style.dart';
import '../../courses/logic/model/courses_response.dart';

class CheekCoursesBlocListener extends StatelessWidget {
  const CheekCoursesBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseesCubit, CoursesState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return success(courses);
          },
          loadingCourses: () {
            return loading(context);
          },
          successCourses: (data) {
            return success(data);
          },
          errorCourses: (error) {
            return Error();
          },
        );
      },
      buildWhen: (previous, current) =>
          current is SuccessCourses ||
          current is ErrorCourses ||
          current is LoadingCourses,
    );
  }
}

Widget success(List<CoursesResponse> CoursesData) {
  return CheckCourse(CoursesData);
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
  return ChecKCoursesShimmer();
}

Widget ChecKCoursesShimmer() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0, left: 10),
        child: Text(
          'يوصى بها',
          style: FontStyleAndText.fontbold,
        ),
      ),
      verticalBox(5.h),
      Container(
        height: 140.h,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Shimmer.fromColors(
                baseColor: ColorManger.lightGray,
                highlightColor: Colors.white,
                child: YourCourses(
                    context: context,
                    image: '',
                    name: '',
                    type: '',
                    nameteatcher: '',
                    time: '')),
          ),
          itemCount: 6,
          scrollDirection: Axis.horizontal,
        ),
      ),
    ],
  );
}
