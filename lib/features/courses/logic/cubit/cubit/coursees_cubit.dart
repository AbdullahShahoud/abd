import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_state.dart';
import 'package:learn_programtion/features/courses/logic/model/check_course_ruqest.dart';
import 'package:learn_programtion/features/courses/logic/model/courses_response.dart';
import 'package:learn_programtion/features/courses/logic/model/delet_course_ruqest.dart';
import 'package:learn_programtion/features/courses/logic/model/finish_coures_ruqest.dart';
import 'package:learn_programtion/features/courses/logic/model/finish_lesson_ruqest.dart';
import 'package:learn_programtion/features/courses/logic/model/finish_test_request.dart';
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
      : super(CoursesState.initialCourses());
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
  // List<CoursesResponse> courses = [];
  List<CoursesResponse> courses = [
    CoursesResponse(
      id: '101',
      name: 'أساسيات البرمجة بلغة Dart',
      image: 'assets/image/images.png',
      nameTeacher: 'د. خالد فهد',
      type: 'برمجة',
      time: '10 ساعات',
      descrip: 'دورة شاملة لتعلم البرمجة باستخدام لغة Dart من البداية.',
      check: true,
      finalTest: Test(
        question: List.generate(
            6,
            (index) => Question(
                  question: 'ما نوع اللغة Dart؟',
                  responseOne: 'لغة برمجة كائنية',
                  responseTwo: 'لغة تجميعية',
                  responseThree: 'لغة منخفضة المستوى',
                )),
        responseCorrect: ['لغة برمجة كائنية'],
      ),
      level: List.generate(
          3,
          (levelIndex) => Level(
                name: 'المستوى ${levelIndex + 1}',
                check: levelIndex == 0,
                test: Test(
                  question: List.generate(
                      6,
                      (index) => Question(
                            question: 'ما هي الجملة المستخدمة لطباعة نص؟',
                            responseOne: 'print()',
                            responseTwo: 'show()',
                            responseThree: 'output()',
                          )),
                  responseCorrect: ['print()'],
                ),
                lessons: List.generate(
                    4,
                    (lessonIndex) => Lesson(
                          id: 'd_${levelIndex}_$lessonIndex',
                          name: 'الدرس ${lessonIndex + 1}',
                          video:
                              'https://example.com/videos/lesson_${lessonIndex + 1}.mp4',
                          descrption: 'شرح الدرس ${lessonIndex + 1}',
                          check: lessonIndex % 2 == 0,
                        )),
              )),
    ),
    CoursesResponse(
      id: '102',
      name: 'تطوير واجهات Flutter',
      image: 'assets/image/images.png',
      nameTeacher: 'أ. منال السيد',
      type: 'تطوير واجهات',
      time: '12 ساعة',
      descrip: 'تعلم إنشاء تطبيقات Flutter بواجهات احترافية.',
      check: false,
      finalTest: Test(
        question: [
          Question(
            question: 'ما هي الـ Widget الأساسية في Flutter؟',
            responseOne: 'MaterialApp',
            responseTwo: 'HtmlApp',
            responseThree: 'UiKitApp',
          )
        ],
        responseCorrect: ['MaterialApp'],
      ),
      level: List.generate(
          4,
          (levelIndex) => Level(
                name: 'مرحلة ${levelIndex + 1}',
                check: false,
                test: Test(
                  question: [
                    Question(
                      question: 'ما الفرق بين Column و Row؟',
                      responseOne: 'Column عمودي، Row أفقي',
                      responseTwo: 'كلاهما أفقي',
                      responseThree: 'كلاهما عمودي',
                    )
                  ],
                  responseCorrect: ['Column عمودي، Row أفقي'],
                ),
                lessons: List.generate(
                    5,
                    (lessonIndex) => Lesson(
                          id: 'f_${levelIndex}_$lessonIndex',
                          name: 'واجهة ${lessonIndex + 1}',
                          video:
                              'https://example.com/videos/ui_${lessonIndex + 1}.mp4',
                          descrption:
                              'بناء واجهة ${lessonIndex + 1} باستخدام Flutter',
                          check: true,
                        )),
              )),
    ),
    CoursesResponse(
      id: '103',
      name: 'احتراف إدارة الحالة باستخدام Bloc',
      image: 'assets/image/images.png',
      nameTeacher: 'م. سامي بشير',
      type: 'إدارة الحالة',
      time: '8 ساعات',
      descrip: 'تعلم إدارة حالة التطبيق بكفاءة باستخدام Bloc و Cubit.',
      check: true,
      finalTest: Test(
        question: [
          Question(
            question: 'ما هو Bloc؟',
            responseOne: 'نمط لإدارة الحالة',
            responseTwo: 'مكون من الواجهة',
            responseThree: 'مكتبة صوتيات',
          )
        ],
        responseCorrect: ['نمط لإدارة الحالة'],
      ),
      level: [
        Level(
          name: 'التهيئة',
          check: true,
          test: Test(
            question: [
              Question(
                question: 'ما الفرق بين Bloc و Cubit؟',
                responseOne: 'Cubit أسهل وأخف',
                responseTwo: 'Bloc أسرع دائمًا',
                responseThree: 'لا فرق كبير',
              )
            ],
            responseCorrect: ['Cubit أسهل وأخف'],
          ),
          lessons: [
            Lesson(
                id: 'b1',
                name: 'مقدمة Bloc',
                video: '',
                descrption: '',
                check: true),
            Lesson(
                id: 'b2',
                name: 'Cubit vs Bloc',
                video: '',
                descrption: '',
                check: false),
            Lesson(
                id: 'b3',
                name: 'BlocBuilder',
                video: '',
                descrption: '',
                check: true),
          ],
        ),
        Level(
          name: 'المستوى المتقدم',
          check: false,
          test: Test(
            question: [
              Question(
                question: 'متى تستخدم BlocConsumer؟',
                responseOne: 'عند الحاجة لتفاعل وحالة',
                responseTwo: 'للبحث فقط',
                responseThree: 'للأزرار فقط',
              )
            ],
            responseCorrect: ['عند الحاجة لتفاعل وحالة'],
          ),
          lessons: List.generate(
              5,
              (i) => Lesson(
                    id: 'adv_$i',
                    name: 'درس متقدم $i',
                    video: '',
                    descrption: 'مفهوم متقدم',
                    check: false,
                  )),
        )
      ],
    ),
    CoursesResponse(
      id: '104',
      name: 'تصميم تجربة المستخدم UI/UX',
      image: 'assets/image/images.png',
      nameTeacher: 'د. رانيا فؤاد',
      type: 'تصميم',
      time: '6 ساعات',
      descrip: 'فهم مبادئ التصميم وتجربة المستخدم لتطبيقات الموبايل.',
      check: false,
      finalTest: Test(
        question: [
          Question(
            question: 'ما هو UI؟',
            responseOne: 'واجهة المستخدم',
            responseTwo: 'نظام التشغيل',
            responseThree: 'ملف الصور',
          )
        ],
        responseCorrect: ['واجهة المستخدم'],
      ),
      level: [
        Level(
          name: 'الأساسيات',
          check: true,
          test: Test(
            question: [
              Question(
                question: 'ما الفرق بين UI و UX؟',
                responseOne: 'UI الشكل، UX التجربة',
                responseTwo: 'UI صوت، UX حركة',
                responseThree: 'لا فرق',
              )
            ],
            responseCorrect: ['UI الشكل، UX التجربة'],
          ),
          lessons: [
            Lesson(
                id: 'ux1',
                name: 'مقدمة التصميم',
                video: '',
                descrption: '',
                check: true),
            Lesson(
                id: 'ux2',
                name: 'ألوان وتنسيق',
                video: '',
                descrption: '',
                check: false),
            Lesson(
                id: 'ux3',
                name: 'تجربة المستخدم',
                video: '',
                descrption: '',
                check: true),
            Lesson(
                id: 'ux4',
                name: 'اختبارات UX',
                video: '',
                descrption: '',
                check: false),
          ],
        )
      ],
    ),
  ];
  CoursesResponse? selectedcorse;
  LevelMe? selectedlevelMe;
  LessonMe? selectedlessonMe;
  CoursesMeResponse? seletCourseMe;
  List<String?> responseUser = List.generate(4, (index) => '');
  List<CoursesMeResponse> coursesMe = [
    CoursesMeResponse(
      id: '301',
      name: 'أساسيات البرمجة بلغة Dart',
      image: 'assets/image/images.png',
      // 'https://dart.dev/assets/shared/dart-logo-for-shares.png?2',
      nameTeacher: 'م. محمد القيسي',
      type: 'برمجة',
      time: '10 ساعات',
      descrip:
          'تعلّم البرمجة من البداية باستخدام لغة Dart. تشمل الدورة متغيرات، أنواع البيانات، المعاملات، الحلقات، والشروط. مرفقة بتمارين عملية واختبارات تقييم.',
      check: true,
      finshed: false,
      finalTest: TestMe(
        question: List.generate(
            4,
            (index) => QuestionMe(
                  question: 'ما هو نوع المتغير النصي في Dart؟',
                  responseOne: 'int',
                  responseTwo: 'String',
                  responseThree: 'bool',
                )),
        finish: false,
        responseCorrect: [
          'String',
          'String',
          'String',
          'String',
          'String',
          'String',
        ],
      ),
      level: [
        LevelMe(
          id: '122',
          name: 'المستوى الأول',
          check: true,
          finished: true,
          test: TestMe(
            question: List.generate(
                4,
                (index) => QuestionMe(
                      question: 'ما فائدة var؟',
                      responseOne: 'تصريح متغير عام',
                      responseTwo: 'مكتبة بيانات',
                      responseThree: 'دالة مخصصة',
                    )),
            finish: false,
            responseCorrect: [
              'تصريح متغير عام',
              'تصريح متغير عام',
              'تصريح متغير عام',
              'تصريح متغير عام',
              'تصريح متغير عام',
              'تصريح متغير عام',
            ],
          ),
          lessons: [
            LessonMe(
              id: 'l1',
              name: 'المتغيرات',
              video: 'https://www.youtube.com/watch?v=Ej_Pcr4uC2Q',
              descrption: 'شرح مفصل لمفهوم المتغيرات وأنواعها في Dart.',
              check: true,
              finished: true,
            ),
            LessonMe(
              id: 'l2',
              name: 'أنواع البيانات',
              video: 'https://www.youtube.com/watch?v=5rtujDjt50g',
              descrption: 'تعلم أنواع البيانات مثل int، String، bool، وغيرها.',
              check: false,
              finished: false,
            ),
          ],
        ),
        LevelMe(
          name: 'المستوى الثاني',
          check: false,
          id: '44',
          finished: false,
          test: TestMe(
            question: List.generate(
                4,
                (index) => QuestionMe(
                      question: 'ما هي الحلقة التي تستخدم عند عدد محدد؟',
                      responseOne: 'for',
                      responseTwo: 'while',
                      responseThree: 'if',
                    )),
            finish: false,
            responseCorrect: [
              'for',
              'for',
              'for',
              'for',
              'for',
              'for',
            ],
          ),
          lessons: [
            LessonMe(
              id: 'l3',
              name: 'الحلقات',
              video: 'https://www.youtube.com/watch?v=yrkBF5fG2O8',
              descrption: 'شرح الفرق بين حلقات for و while مع أمثلة.',
              check: false,
              finished: false,
            ),
            LessonMe(
              id: 'l4',
              name: 'الشروط',
              video: 'https://www.youtube.com/watch?v=EdGDVZcgTpo',
              descrption: 'تعلم بناء الشروط باستخدام if، else، و switch.',
              check: true,
              finished: false,
            ),
          ],
        ),
        LevelMe(
          name: 'المستوى الثاني',
          check: false,
          id: '77',
          finished: false,
          test: TestMe(
            question: List.generate(
                4,
                (index) => QuestionMe(
                      question: 'ما هي الحلقة التي تستخدم عند عدد محدد؟',
                      responseOne: 'for',
                      responseTwo: 'while',
                      responseThree: 'if',
                    )),
            finish: false,
            responseCorrect: [
              'for',
              'for',
              'for',
              'for',
              'for',
              'for',
            ],
          ),
          lessons: [
            LessonMe(
              id: 'l3',
              name: 'الحلقات',
              video: 'https://www.youtube.com/watch?v=yrkBF5fG2O8',
              descrption: 'شرح الفرق بين حلقات for و while مع أمثلة.',
              check: false,
              finished: false,
            ),
            LessonMe(
              id: 'l4',
              name: 'الشروط',
              video: 'https://www.youtube.com/watch?v=EdGDVZcgTpo',
              descrption: 'تعلم بناء الشروط باستخدام if، else، و switch.',
              check: true,
              finished: false,
            ),
          ],
        ),
        LevelMe(
          name: 'المستوى الثاني',
          check: false,
          id: '33',
          finished: false,
          test: TestMe(
            question: List.generate(
                4,
                (index) => QuestionMe(
                      question: 'ما هي الحلقة التي تستخدم عند عدد محدد؟',
                      responseOne: 'for',
                      responseTwo: 'while',
                      responseThree: 'if',
                    )),
            finish: false,
            responseCorrect: [
              'for',
              'for',
              'for',
              'for',
              'for',
              'for',
            ],
          ),
          lessons: [
            LessonMe(
              id: 'l3',
              name: 'الحلقات',
              video: 'https://www.youtube.com/watch?v=yrkBF5fG2O8',
              descrption: 'شرح الفرق بين حلقات for و while مع أمثلة.',
              check: false,
              finished: false,
            ),
            LessonMe(
              id: 'l4',
              name: 'الشروط',
              video: 'https://www.youtube.com/watch?v=EdGDVZcgTpo',
              descrption: 'تعلم بناء الشروط باستخدام if، else، و switch.',
              check: true,
              finished: false,
            ),
          ],
        ),
      ],
    ),
    CoursesMeResponse(
      id: '302',
      name: 'تطوير تطبيقات Flutter',
      image: 'assets/image/images.png',
      // 'https://storage.googleapis.com/cms-storage-bucket/ec64036b4eacc9f3fd73.png',
      nameTeacher: 'م. ندى الحربي',
      type: 'تطوير تطبيقات',
      time: '15 ساعة',
      descrip:
          'دورة متكاملة لتعلم تطوير تطبيقات الهاتف باستخدام Flutter. تشمل واجهات المستخدم، إدارة الحالة، التعامل مع API، والربط مع قواعد البيانات.',
      check: false,
      finshed: false,
      finalTest: TestMe(
        question: List.generate(
            4,
            (index) => QuestionMe(
                  question: 'ما هو العنصر المستخدم لعرض صورة في Flutter؟',
                  responseOne: 'Container',
                  responseTwo: 'Image',
                  responseThree: 'Text',
                )),
        finish: false,
        responseCorrect: [
          'Image',
          'Image',
          'Image',
          'Image',
          'Image',
          'Image',
        ],
      ),
      level: [
        LevelMe(
          name: 'الواجهة الأمامية',
          check: true,
          finished: true,
          id: '22',
          test: TestMe(
            question: [
              QuestionMe(
                question: 'ما هي أداة إنشاء الأعمدة؟',
                responseOne: 'Row',
                responseTwo: 'Column',
                responseThree: 'Stack',
              )
            ],
            finish: false,
            responseCorrect: [
              'Column',
            ],
          ),
          lessons: [
            LessonMe(
              id: 'l5',
              name: 'تصميم الشاشة الرئيسية',
              video: 'https://www.youtube.com/watch?v=x0uinJvhNxI',
              descrption: 'إنشاء واجهة رئيسية باستخدام Widgets.',
              check: true,
              finished: true,
            ),
          ],
        ),
      ],
    ),
    CoursesMeResponse(
      id: '303',
      name: 'برمجة واجهات ويب باستخدام HTML & CSS',
      image: 'assets/image/images.png',
      // 'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',
      nameTeacher: 'د. خالد الزهراني',
      type: 'تصميم مواقع',
      time: '8 ساعات',
      descrip:
          'أساسيات برمجة وتصميم صفحات الإنترنت باستخدام HTML وCSS. تغطي الدورة بناء الهيكل العام للموقع وتصميم العناصر واستجابتها للشاشات المختلفة.',
      check: true,
      finshed: false,
      finalTest: TestMe(
        question: List.generate(
            4,
            (index) => QuestionMe(
                  question: 'ما هي الوسمة الصحيحة لإنشاء رابط؟',
                  responseOne: '<link>',
                  responseTwo: '<a>',
                  responseThree: '<p>',
                )),
        finish: false,
        responseCorrect: [
          '<a>',
          '<a>',
          '<a>',
          '<a>',
          '<a>',
          '<a>',
        ],
      ),
      level: [
        LevelMe(
          name: 'مقدمة HTML',
          check: true,
          id: '99',
          finished: true,
          test: TestMe(
            question: [
              QuestionMe(
                question: 'ما وظيفة الوسم <h1>؟',
                responseOne: 'رابط',
                responseTwo: 'فقرة',
                responseThree: 'عنوان رئيسي',
              )
            ],
            finish: false,
            responseCorrect: ['عنوان رئيسي'],
          ),
          lessons: [
            LessonMe(
              id: 'l6',
              name: 'هيكل الصفحة',
              video: 'https://www.youtube.com/watch?v=UB1O30fR-EE',
              descrption: 'مقدمة عن عناصر HTML الرئيسية مثل head و body.',
              check: true,
              finished: false,
            ),
            LessonMe(
              id: 'l7',
              name: 'الروابط والصور',
              video: 'https://www.youtube.com/watch?v=5hVbUuoZg3Y',
              descrption: 'شرح الوسوم <a> و <img> واستخدامها.',
              check: false,
              finished: false,
            ),
          ],
        )
      ],
    ),
  ];
  // List<CoursesMeResponse> coursesMe = [];
  void emitCoursesList() async {
    emit(CoursesState.initialCourses());
    final response = await coursesRepo.getCourse();
    response.when(success: (data) {
      courses = data;
      // getCoursesList(courses.first.type!);
      emit(CoursesState.successCourses(courses));
    }, failure: (error) {
      emit(CoursesState.errorCourses(error: 'error'));
    });
  }

  // void getCoursesList(String? type) {
  //   List<CoursesResponse> category = selectCategory(type!);

  //   if (!category!.isEmpty) {
  //     emit(CoursesState.listCoursesSuccess(category));
  //   } else {
  //     emit(CoursesState.listCoursesError(error: 'error'));
  //   }
  // }

  void emitCoursesMe() async {
    emit(CoursesState.initialCoursesMe());
    final response = await coursesMeRepo.getCoursesMe();
    response.when(success: (data) {
      coursesMe = data;
      emit(CoursesState.successCoursesMe(coursesMe));
    }, failure: (error) {
      emit(CoursesState.errorCoursesMe(error: 'error'));
    });
  }

  void emitCheckCourses() async {
    emit(CoursesState.initialCourses());
    final response = await checkCourseRepo
        .checkCourses(CheckCourseRuqest(courseId: seletCourseMe!.id!));
    response.when(success: (data) {
      emit(CoursesState.successCourses(data.message));
    }, failure: (error) {
      emit(CoursesState.errorCourses(error: 'error'));
    });
  }

  void emitdeletCourses() async {
    emit(CoursesState.initialCourses());
    final response = await deletCoursenRepo
        .deletCourse(DeletCourseRuqest(id: seletCourseMe!.id!));
    response.when(success: (data) {
      emit(CoursesState.successCourses(data.massege));
    }, failure: (error) {
      emit(CoursesState.errorCourses(error: 'error'));
    });
  }

  void emitSendQuation(String idCourse, String idLesson, String text) async {
    emit(CoursesState.sendQuationInitial());
    final response = await sendQuationsRepo.sendQuation(
        SendQautionsRuqest(text: text, courseId: idCourse, lessonId: idLesson));
    response.when(success: (sendQautionReesponse) {
      emit(CoursesState.sendQuationSuccess(sendQautionReesponse.massage!));
    }, failure: (error) {
      emit(CoursesState.sendQuationError(error: "error"));
    });
  }

  void emitFinishTest() async {
    emit(CoursesState.finishedInitial());
    final response = await finishTestRepo.finishTest(FinishedTestRuqest(
        courseId: seletCourseMe!.id,
        levelId: selectedlevelMe!.id,
        dagre: accountDagre().toString()));
    response.when(success: (data) {
      emit(CoursesState.finishedSuccess(data.messsage!));
    }, failure: (error) {
      emit(CoursesState.finishedError(error: 'error'));
    });
  }

  void emitFinishLesson() async {
    emit(CoursesState.finishedInitial());
    final response = await finishLessonRepo.finishLesson(FinishLessonRuqest(
        courseId: seletCourseMe!.id!, lessonId: selectedlessonMe!.id!));
    response.when(success: (finishLessonResponse) {
      emit(CoursesState.finishedSuccess(finishLessonResponse.message!));
    }, failure: (error) {
      emit(CoursesState.finishedError(error: 'error'));
    });
  }

  void emitFinishCourse() async {
    emit(CoursesState.finishedInitial());
    final response = await finishCourseRepo
        .finishCourses(FinishCourseRuqest(courseId: seletCourseMe!.id));
    response.when(success: (data) {
      emit(CoursesState.finishedSuccess(data.message!));
    }, failure: (error) {
      emit(CoursesState.finishedError(error: 'error'));
    });
  }

  int accountDagre() {
    int degre = 0;

    for (int i = 0; i < responseUser.length; i++) {
      if (responseUser[i] == selectedlevelMe?.test.responseCorrect[i]) {
        degre++;
      }
    }
    return degre;
  }

  void selectCourse(CoursesResponse course) {
    selectedcorse = course;
    emit(CoursesState.courseSelected(course));
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

  // selectCategory(String ga) {
  //   List<CoursesResponse> category =
  //       courses.where((element) => element.type == ga).toList();
  //   print(category.length);
  //   return category;
  // }
}
