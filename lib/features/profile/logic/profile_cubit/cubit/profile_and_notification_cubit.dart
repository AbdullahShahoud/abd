import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_state.dart';

// import '../../../../books/logic/model/book_response.dart';
import '../../../../books/logic/model/book_response.dart';
import '../../../../books/logic/repo/book_repo.dart';
import '../../../../notification/logic/model/notification_response.dart';
import '../../../../notification/logic/repo/notification_repo.dart';
import '../../model/changEmail/chang_email_request.dart';
import '../../model/changePassord/chang_password_request.dart';
import '../../repo/change_email_repo.dart';
import '../../repo/change_password_repo.dart';
import '../../repo/delet_repo.dart';
import '../../repo/view_grade_repo.dart';

class ProfileAndNotificationCubit extends Cubit<ProfileAndNotificationState> {
  ProfileAndNotificationCubit(this.profileRepoPassword, this.changeEmailRepo,
      this.deletRepo, this.viewGradeRepo, this.bookRepo, this.notificationRepo)
      : super(ProfileAndNotificationState.initial());
  static ProfileAndNotificationCubit get(context) => BlocProvider.of(context);
  BookRepo bookRepo;
  NotificationRepo notificationRepo;
  DeletRepo deletRepo;
  // List<Book> book = [];
  List<Book> book = [
    Book(
        id: 1,
        name: 'مقدمة في البرمجة',
        authr: 'أحمد العلي',
        url: 'https://example.com/books/book1.pdf',
        image: 'assets/image/unnamed.png'),
    Book(
        id: 2,
        name: 'تصميم واجهات Flutter',
        authr: 'منى خليل',
        url: 'https://example.com/books/book2.pdf',
        image: 'assets/image/unnamed.png'),
    Book(
        id: 3,
        name: 'دليل Dart للمبتدئين',
        authr: 'سامي القيسي',
        url: 'https://example.com/books/book3.pdf',
        image: 'assets/image/unnamed.png'),
    Book(
        id: 4,
        name: 'هندسة البرمجيات',
        authr: 'رانيا فؤاد',
        url: 'https://example.com/books/book4.pdf',
        image: 'assets/image/unnamed.png'),
    Book(
        id: 5,
        name: 'الخوارزميات',
        authr: 'محمد سمير',
        url: 'https://example.com/books/book5.pdf',
        image: 'assets/image/unnamed.png'),
  ];
  List<NotificationItem> notification = [
    NotificationItem(
        date: '2024-01-10', text: 'تم إضافة دورة جديدة: Flutter للمبتدئين'),
    NotificationItem(
        date: '2024-01-12', text: 'موعد الاختبار النهائي تم تحديده'),
    NotificationItem(date: '2024-01-15', text: 'تم تحديث محتوى دورة Dart'),
    NotificationItem(date: '2024-01-20', text: 'تذكير: مراجعة المستوى الأول'),
    NotificationItem(date: '2024-02-01', text: 'مبارك! أكملت 50% من دورتك'),
  ];
  // List<NotificationItem> notification = [];
  List<QuestionAndResponse> questionAndResponse = [
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
  // List<QuestionAndResponse> questionAndResponse = [];
  void emitBook() async {
    emit(ProfileAndNotificationState.initial());
    final response = await bookRepo.getBook();
    response.when(
      success: (bookResponse) {
        book = bookResponse.bookResponse;
        emit(ProfileAndNotificationState.success(bookResponse.bookResponse));
      },
      failure: (errorHandler) {
        emit(ProfileAndNotificationState.error(error: 'nobook'));
      },
    );
  }

  void emitNotification() async {
    emit(ProfileAndNotificationState.initial());
    final response = await notificationRepo.getNotification();
    response.whenOrNull(
      success: (notificationRepo) {
        notification = notificationRepo.notificatio;
        questionAndResponse = notificationRepo.question;
        emit(ProfileAndNotificationState.success(notification));
        emit(ProfileAndNotificationState.success(questionAndResponse));
      },
      failure: (errorHandler) {
        emit(ProfileAndNotificationState.error(error: 'noNotification'));
      },
    );
  }

  ProfileRepoPassword profileRepoPassword;
  var keysPassword = GlobalKey<FormState>();
  TextEditingController? controllerPassword = TextEditingController();
  TextEditingController? controllerPassword2 = TextEditingController();
  TextEditingController? controllerPassword3 = TextEditingController();
  List<String> grade = [];
  void emiteChangePassword() async {
    emit(ProfileAndNotificationState.initial());
    final response = await profileRepoPassword.changePasseord(
        ChangePasswordRequest(
            passwordOld: controllerPassword?.text,
            passwordNew: controllerPassword2?.text));
    response.when(success: (data) {
      emit(ProfileAndNotificationState.success(data));
    }, failure: (error) {
      emit(ProfileAndNotificationState.error(error: 'Nooooot'));
    });
  }

  TextEditingController? controllerEmail = TextEditingController();
  TextEditingController? controllerName = TextEditingController();
  var keysEmailAndName = GlobalKey<FormState>();
  ChangeEmailRepo changeEmailRepo;
  void emiteChangeEmail() async {
    emit(ProfileAndNotificationState.initial());
    final response = await changeEmailRepo.changePasseord(ChangeEmailRequest(
        email: controllerEmail?.text, name: controllerName?.text));
    response.when(success: (data) {
      emit(ProfileAndNotificationState.success(data));
    }, failure: (error) {
      emit(ProfileAndNotificationState.error(error: 'Nooooot'));
    });
  }

  ViewGradeRepo viewGradeRepo;
  void emiteViewGrade() async {
    emit(ProfileAndNotificationState.initial());
    final response = await viewGradeRepo.getViewGrade();
    response.when(success: (data) {
      grade.addAll(data.grades);
      emit(ProfileAndNotificationState.success(data.grades));
    }, failure: (error) {
      emit(ProfileAndNotificationState.error(error: "Noooooot"));
    });
  }

  void emiteDeletUser() async {
    emit(ProfileAndNotificationState.initial());
    final response = await deletRepo.delUser();
    response.when(success: (data) {
      emit(ProfileAndNotificationState.success(data.message));
    }, failure: (error) {
      emit(ProfileAndNotificationState.error(error: "Noooooot"));
    });
  }
}
