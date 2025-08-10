import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_state.dart';
import 'package:learn_programtion/features/courses/logic/model/checkCourser/check_course_ruqest.dart';
import 'package:learn_programtion/features/courses/logic/model/courses_response.dart';
import 'package:learn_programtion/features/courses/logic/model/deleteCourse/delet_course_ruqest.dart';
import 'package:learn_programtion/features/courses/logic/model/finishCourser/finish_coures_ruqest.dart';
import 'package:learn_programtion/features/courses/logic/model/finish_lesson_ruqest.dart';
import 'package:learn_programtion/features/courses/logic/model/send_qaustion_request.dart';
import 'package:learn_programtion/features/courses/logic/repo/check_course_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/courser_me_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/courses_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/delet_course_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/finish_course_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/finish_lesson_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/finish_test_repo.dart';
import 'package:learn_programtion/features/courses/logic/repo/send_quation_repo.dart';

import '../../model/courses_me_response.dart';

class CourseesCubit extends Cubit<CoursesState> {
  CourseesCubit(
      this.coursesMeRepo,
      this.coursesRepo,
      this.checkCourseRepo,
      this.finishCourseRepo,
      this.deletCoursenRepo,
      this.finishLessonRepo,
      this.finishTestRepo,
      this.sendQuationsRepo)
      : super(CoursesState.listCoursesInitial());
  static CourseesCubit get(context) => BlocProvider.of(context);
  TextEditingController inputQuationsMe = TextEditingController();
  var keyMe = GlobalKey<FormState>();
  CoursesRepo coursesRepo;
  DeletCoursenRepo deletCoursenRepo;
  CoursesMeRepo coursesMeRepo;
  FinishCourseRepo finishCourseRepo;
  FinishTestRepo finishTestRepo;
  FinishLessonRepo finishLessonRepo;
  SendQuationsRepo sendQuationsRepo;
  CheckCourseRepo checkCourseRepo;
  String? ca;
  int? id;
  List<CoursesResponse> courses = [];
  CoursesResponse? selectedcorse;
  LevelMe? selectedlevelMe;
  LessonMe? selectedlessonMe;
  CoursesMeResponse? seletCourseMe;
  List<String?> responseUser = List.generate(4, (index) => '');
  List<CoursesMeResponse> coursesMe = [];
  void emitCoursesList() async {
    emit(CoursesState.listCoursesLoading());
    final response = await coursesRepo.getCourse();
    response.when(success: (data) {
      courses = data;
      emit(CoursesState.listCoursesSuccess(courses));
    }, failure: (error) {
      emit(CoursesState.listCoursesError(error: 'error'));
    });
  }

  void emitCoursesMe() async {
    emit(CoursesState.loadingCoursesMe());
    final response = await coursesMeRepo.getCoursesMe();
    response.when(success: (data) {
      coursesMe = data;
      emit(CoursesState.successCoursesMe(coursesMe));
    }, failure: (error) {
      emit(CoursesState.errorCoursesMe(error: 'error'));
    });
  }

  void emitCheckCourses() async {
    emit(CoursesState.checkCoursesLoading());
    final response = await checkCourseRepo.checkCourses(
        CheckCourseRuqest(course: selectedcorse!.id!, student: id));
    response.when(success: (data) {
      emit(CoursesState.checkCoursesSuccess(data.message));
    }, failure: (error) {
      emit(CoursesState.checkCoursesError(error: 'error'));
    });
  }

  void emitdeletCourses() async {
    emit(CoursesState.deleteCoursesLoading());
    final response = await deletCoursenRepo
        .deletCourse(DeletCourseRuqest(id: seletCourseMe!.id!));
    response.when(success: (data) {
      emit(CoursesState.deleteCoursesSuccess(data.massege));
    }, failure: (error) {
      emit(CoursesState.deleteCoursesError(error: 'error'));
    });
  }

  void emitSendQuation(int idCourse, int idLesson, String text) async {
    emit(CoursesState.sendQuationLoading());
    final response = await sendQuationsRepo.sendQuation(SendQautionsRuqest(
        question_text: text, course: idCourse, lesson: idLesson));
    response.when(success: (sendQautionReesponse) {
      emit(CoursesState.sendQuationSuccess(sendQautionReesponse.massage!));
    }, failure: (error) {
      emit(CoursesState.sendQuationError(error: "error"));
    });
  }

  // void emitFinishTest() async {
  //   emit(CoursesState.finishedInitial());
  //   final response = await finishTestRepo.finishTest(FinishedTestRuqest(
  //       courseId: seletCourseMe!.id,
  //       levelId: selectedlevelMe!.id,
  //       dagre: accountDagre().toString()));
  //   response.when(success: (data) {
  //     emit(CoursesState.finishedSuccess(data.messsage!));
  //   }, failure: (error) {
  //     emit(CoursesState.finishedError(error: 'error'));
  //   });
  // }

  void emitFinishLesson() async {
    emit(CoursesState.finishedLoading());
    final response = await finishLessonRepo.finishLesson(FinishLessonRuqest(
        course: seletCourseMe!.id!, lesson: selectedlessonMe!.id!));
    response.when(success: (finishLessonResponse) {
      emit(CoursesState.finishedSuccess(finishLessonResponse.message!));
    }, failure: (error) {
      emit(CoursesState.finishedError(error: 'error'));
    });
  }

  void emitFinishCourse() async {
    emit(CoursesState.finishedLoading());
    final response = await finishCourseRepo
        .finishCourses(FinishCourseRuqest(course_id: seletCourseMe!.id));
    response.when(success: (data) {
      emit(CoursesState.finishedSuccess(data.message!));
    }, failure: (error) {
      emit(CoursesState.finishedError(error: 'error'));
    });
  }

  void selectCourseMe(CoursesMeResponse course) {
    seletCourseMe = course;
    emit(CoursesState.courseSelectedMe(course));
  }

  void selectLevelMe(LevelMe level) {
    selectedlevelMe = level;
    emit(CoursesState.levelSelectedMe(level));
  }

  void selectLessonMe(LessonMe lesson) {
    selectedlessonMe = lesson;
    emit(CoursesState.lessonSelectedMe(lesson));
  }
}
