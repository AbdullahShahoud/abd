import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Ui/widget/courses_bloc_listener.dart';
import '../../model/courses_response.dart';
import '../../repo/courses_repo.dart';
import 'courser_cubit_state.dart';

class CourserCubitTeacher extends Cubit<CourserCubitTeacherState> {
  CourserCubitTeacher(this.coursesTeacherRepo)
      : super(CourserCubitTeacherState.initialCourses());
  static CourserCubitTeacher get(context) => BlocProvider.of(context);
  CoursesTeacherRepo coursesTeacherRepo;
  List<CoursesResponseTc> CoursesTeacher = getSampleCourses;
  CoursesResponseTc? selectedcorse;
  Levels? selectedlevel;
  Lessons? selectedlesson;

  TextEditingController? controller1 = TextEditingController();
  TextEditingController? controller2 = TextEditingController();
  var keye = GlobalKey<FormState>();

  TextEditingController? controllerimage = TextEditingController();
  TextEditingController? controllername = TextEditingController();

  TextEditingController? controllerdescription = TextEditingController();
  TextEditingController? controllertime = TextEditingController();
  void emitCoursesTeacher() async {
    emit(CourserCubitTeacherState.loadinCourses());
    final response = await coursesTeacherRepo.getCoursesTeacher();
    response.whenOrNull(
      success: (coursesRepo) {
        CoursesTeacher = getSampleCourses;
        emit(CourserCubitTeacherState.successCourses(CoursesTeacher));
      },
      failure: (errorHandler) {
        emit(CourserCubitTeacherState.errorCourses(error: 'noCourses'));
      },
    );
  }
}
