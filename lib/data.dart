import 'package:learn_programtion/features/courses/logic/model/courses_response.dart';
import 'package:learn_programtion/features/notification/logic/model/notification_response.dart';

import 'features/courses/logic/model/courses_me_response.dart';

final List<CoursesResponse> courses = [
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
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
final List<CoursesMeResponse> coursesMe = [
  CoursesMeResponse(
    id: '301',
    name: 'أساسيات البرمجة بلغة Dart',
    image: 'assets/image/images.png',
    nameTeacher: 'م. محمد القيسي',
    type: 'برمجة',
    time: '10 ساعات',
    descrip: 'دورة تعلمك أساسيات Dart مع تمارين واختبارات.',
    check: true,
    finshed: false,
    finalTest: TestMe(
      question: List.generate(
          6,
          (index) => QuestionMe(
                question: 'ما هو نوع المتغير النصي في Dart؟',
                responseOne: 'int',
                responseTwo: 'String',
                responseThree: 'bool',
              )),
      finish: false,
      responseCorrect: ['String'],
    ),
    level: [
      LevelMe(
        name: 'المستوى الأول',
        check: true,
        id: '12',
        finished: true,
        test: TestMe(
          question: List.generate(
              6,
              (index) => QuestionMe(
                    question: 'ما فائدة var؟',
                    responseOne: 'تصريح متغير عام',
                    responseTwo: 'مكتبة بيانات',
                    responseThree: 'دالة مخصصة',
                  )),
          finish: false,
          responseCorrect: ['تصريح متغير عام'],
        ),
        lessons: [
          LessonMe(
            id: 'l1',
            name: 'المتغيرات',
            video: 'https://example.com/videos/variables.mp4',
            descrption: 'شرح المتغيرات بأنواعها',
            check: true,
            finished: true,
          ),
          LessonMe(
            id: 'l2',
            name: 'أنواع البيانات',
            video: 'https://example.com/videos/types.mp4',
            descrption: 'تعلم أنواع البيانات المختلفة',
            check: false,
            finished: false,
          ),
          LessonMe(
            id: 'l3',
            name: 'المعاملات',
            video: 'https://example.com/videos/operators.mp4',
            descrption: 'تفصيل المعاملات الرياضية والمنطقية',
            check: true,
            finished: false,
          ),
        ],
      ),
      LevelMe(
        name: 'المستوى الثاني',
        check: false,
        id: '17',
        finished: false,
        test: TestMe(
          question: List.generate(
              6,
              (index) => QuestionMe(
                    question: 'ما هي الحلقة التي تستخدم عند عدد محدد؟',
                    responseOne: 'for',
                    responseTwo: 'while',
                    responseThree: 'if',
                  )),
          finish: false,
          responseCorrect: ['for'],
        ),
        lessons: [
          LessonMe(
            id: 'l4',
            name: 'الحلقات',
            video: 'https://example.com/videos/loops.mp4',
            descrption: 'شرح for و while',
            check: false,
            finished: false,
          ),
          LessonMe(
            id: 'l5',
            name: 'الشروط',
            video: 'https://example.com/videos/conditions.mp4',
            descrption: 'شرح if و else',
            check: true,
            finished: false,
          ),
        ],
      ),
      LevelMe(
        name: 'المستوى الثاني',
        check: false,
        finished: false,
        id: '18',
        test: TestMe(
          question: List.generate(
              6,
              (index) => QuestionMe(
                    question: 'ما هي الحلقة التي تستخدم عند عدد محدد؟',
                    responseOne: 'for',
                    responseTwo: 'while',
                    responseThree: 'if',
                  )),
          finish: false,
          responseCorrect: ['for'],
        ),
        lessons: [
          LessonMe(
            id: 'l4',
            name: 'الحلقات',
            video: 'https://example.com/videos/loops.mp4',
            descrption: 'شرح for و while',
            check: false,
            finished: false,
          ),
          LessonMe(
            id: 'l5',
            name: 'الشروط',
            video: 'https://example.com/videos/conditions.mp4',
            descrption: 'شرح if و else',
            check: true,
            finished: false,
          ),
        ],
      ),
      LevelMe(
        name: 'المستوى الثاني',
        id: '11',
        check: false,
        finished: false,
        test: TestMe(
          question: List.generate(
              6,
              (index) => QuestionMe(
                    question: 'ما هي الحلقة التي تستخدم عند عدد محدد؟',
                    responseOne: 'for',
                    responseTwo: 'while',
                    responseThree: 'if',
                  )),
          finish: false,
          responseCorrect: ['for'],
        ),
        lessons: [
          LessonMe(
            id: 'l4',
            name: 'الحلقات',
            video: 'https://example.com/videos/loops.mp4',
            descrption: 'شرح for و while',
            check: false,
            finished: false,
          ),
          LessonMe(
            id: 'l5',
            name: 'الشروط',
            video: 'https://example.com/videos/conditions.mp4',
            descrption: 'شرح if و else',
            check: true,
            finished: false,
          ),
        ],
      )
    ],
  ),

  // يمكن تكرار نفس البنية مع تغييرات بسيطة لإضافة المزيد من الدورات
];
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
List<CoursesMeResponse> coursesMes = [
  CoursesMeResponse(
    id: '301',
    name: 'أساسيات البرمجة بلغة Dart',
    image: 'https://dart.dev/assets/shared/dart-logo-for-shares.png?2',
    nameTeacher: 'م. محمد القيسي',
    type: 'برمجة',
    time: '10 ساعات',
    descrip:
        'تعلّم البرمجة من البداية باستخدام لغة Dart. تشمل الدورة متغيرات، أنواع البيانات، المعاملات، الحلقات، والشروط. مرفقة بتمارين عملية واختبارات تقييم.',
    check: true,
    finshed: false,
    finalTest: TestMe(
      question: List.generate(
          7,
          (index) => QuestionMe(
                question: 'ما هو نوع المتغير النصي في Dart؟',
                responseOne: 'int',
                responseTwo: 'String',
                responseThree: 'bool',
              )),
      finish: false,
      responseCorrect: ['String'],
    ),
    level: [
      LevelMe(
        id: '122',
        name: 'المستوى الأول',
        check: true,
        finished: true,
        test: TestMe(
          question: List.generate(
              6,
              (index) => QuestionMe(
                    question: 'ما فائدة var؟',
                    responseOne: 'تصريح متغير عام',
                    responseTwo: 'مكتبة بيانات',
                    responseThree: 'دالة مخصصة',
                  )),
          finish: false,
          responseCorrect: ['تصريح متغير عام'],
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
              6,
              (index) => QuestionMe(
                    question: 'ما هي الحلقة التي تستخدم عند عدد محدد؟',
                    responseOne: 'for',
                    responseTwo: 'while',
                    responseThree: 'if',
                  )),
          finish: false,
          responseCorrect: ['for'],
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
              6,
              (index) => QuestionMe(
                    question: 'ما هي الحلقة التي تستخدم عند عدد محدد؟',
                    responseOne: 'for',
                    responseTwo: 'while',
                    responseThree: 'if',
                  )),
          finish: false,
          responseCorrect: ['for'],
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
              6,
              (index) => QuestionMe(
                    question: 'ما هي الحلقة التي تستخدم عند عدد محدد؟',
                    responseOne: 'for',
                    responseTwo: 'while',
                    responseThree: 'if',
                  )),
          finish: false,
          responseCorrect: ['for'],
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
    image:
        'https://storage.googleapis.com/cms-storage-bucket/ec64036b4eacc9f3fd73.png',
    nameTeacher: 'م. ندى الحربي',
    type: 'تطوير تطبيقات',
    time: '15 ساعة',
    descrip:
        'دورة متكاملة لتعلم تطوير تطبيقات الهاتف باستخدام Flutter. تشمل واجهات المستخدم، إدارة الحالة، التعامل مع API، والربط مع قواعد البيانات.',
    check: false,
    finshed: false,
    finalTest: TestMe(
      question: List.generate(
          6,
          (index) => QuestionMe(
                question: 'ما هو العنصر المستخدم لعرض صورة في Flutter؟',
                responseOne: 'Container',
                responseTwo: 'Image',
                responseThree: 'Text',
              )),
      finish: false,
      responseCorrect: ['Image'],
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
          responseCorrect: ['Column'],
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
    image:
        'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',
    nameTeacher: 'د. خالد الزهراني',
    type: 'تصميم مواقع',
    time: '8 ساعات',
    descrip:
        'أساسيات برمجة وتصميم صفحات الإنترنت باستخدام HTML وCSS. تغطي الدورة بناء الهيكل العام للموقع وتصميم العناصر واستجابتها للشاشات المختلفة.',
    check: true,
    finshed: false,
    finalTest: TestMe(
      question: List.generate(
          6,
          (index) => QuestionMe(
                question: 'ما هي الوسمة الصحيحة لإنشاء رابط؟',
                responseOne: '<link>',
                responseTwo: '<a>',
                responseThree: '<p>',
              )),
      finish: false,
      responseCorrect: ['<a>'],
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

//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm

final List<NotificationItem> mockNotifications = [
  NotificationItem(
      date: '2024-01-10', text: 'تم إضافة دورة جديدة: Flutter للمبتدئين'),
  NotificationItem(date: '2024-01-12', text: 'موعد الاختبار النهائي تم تحديده'),
  NotificationItem(date: '2024-01-15', text: 'تم تحديث محتوى دورة Dart'),
  NotificationItem(date: '2024-01-20', text: 'تذكير: مراجعة المستوى الأول'),
  NotificationItem(date: '2024-02-01', text: 'مبارك! أكملت 50% من دورتك'),
];

final List<QuestionAndResponse> questionAndResponse = [
  QuestionAndResponse(
    date: '2024-01-11',
    question: 'ما الفرق بين Stateless و Stateful Widget؟',
    response: 'Stateless لا يتغير، Stateful يحتفظ بالحالة.',
  ),
  QuestionAndResponse(
    date: '2024-01-13',
    question: 'كيف أتعامل مع القوائم في Dart؟',
    response: 'استخدم List ويمكنك التكرار باستخدام for أو forEach.',
  ),
  QuestionAndResponse(
    date: '2024-01-17',
    question: 'ما هي أفضل طريقة لإدارة الحالة؟',
    response: 'حسب الحاجة، Bloc أو Provider من الخيارات الشائعة.',
  ),
  QuestionAndResponse(
    date: '2024-01-25',
    question: 'هل أحتاج إلى تعلم OOP للبدء بـ Flutter؟',
    response: 'نعم، المعرفة الأساسية بـ OOP مفيدة جداً.',
  ),
  QuestionAndResponse(
    date: '2024-02-02',
    question: 'ما هو الفرق بين Future و Stream؟',
    response: 'Future تعيد قيمة واحدة في المستقبل، Stream تعيد عدة قيم.',
  ),
];
