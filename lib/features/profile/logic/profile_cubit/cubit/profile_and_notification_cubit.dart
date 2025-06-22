import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_state.dart';
import '../../../../books/logic/model/book_response.dart';
import '../../../../books/logic/repo/book_repo.dart';
import '../../../../notification/logic/model/notification_response.dart';
import '../../../../notification/logic/repo/notification_repo.dart';
import '../../model/changEmail/chang_email_request.dart';
import '../../model/changePassord/chang_password_request.dart';
import '../../model/delet_user_ruqest.dart';
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
  List<Book> book = [];
  List<NotificationItem> notification = [];
  List<QuestionAndResponse> questionAndResponse = [];
  void emitBook() async {
    emit(ProfileAndNotificationState.loadingBook());
    final response = await bookRepo.getBook();
    response.when(
      success: (bookResponse) {
        book = bookResponse.bookResponse;
        emit(
            ProfileAndNotificationState.successBook(bookResponse.bookResponse));
      },
      failure: (errorHandler) {
        emit(ProfileAndNotificationState.errorBook(error: 'nobook'));
      },
    );
  }

  void emitNotification() async {
    emit(ProfileAndNotificationState.loadingNotificationNormal());
    final response = await notificationRepo.getNotification();
    response.whenOrNull(
      success: (notificationRepo) {
        notification = notificationRepo.notificatio;
        questionAndResponse = notificationRepo.question;
        emit(ProfileAndNotificationState.successNotificationNormal(
            notification));
        emit(ProfileAndNotificationState.successNotificationQuestion(
            questionAndResponse));
      },
      failure: (errorHandler) {
        emit(ProfileAndNotificationState.errorNotificationNormal(
            error: 'noNotification'));
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
    emit(ProfileAndNotificationState.loadingSecurite());
    final response = await profileRepoPassword.changePasseord(
        ChangePasswordRequest(
            passwordOld: controllerPassword?.text,
            passwordNew: controllerPassword2?.text));
    response.when(success: (data) {
      emit(ProfileAndNotificationState.successSecurite(data));
    }, failure: (error) {
      emit(ProfileAndNotificationState.errorSecurite(error: 'Nooooot'));
    });
  }

  TextEditingController? controllerEmail = TextEditingController();
  TextEditingController? controllerName = TextEditingController();
  var keysEmailAndName = GlobalKey<FormState>();
  ChangeEmailRepo changeEmailRepo;
  void emiteChangeEmail() async {
    emit(ProfileAndNotificationState.loadingPersoinInformation());
    final response = await changeEmailRepo.changePasseord(ChangeEmailRequest(
        email: controllerEmail?.text, name: controllerName?.text));
    response.when(success: (data) {
      emit(ProfileAndNotificationState.successPersoinInformation(data));
    }, failure: (error) {
      emit(ProfileAndNotificationState.errorPersoinInformation(
          error: 'Nooooot'));
    });
  }

  ViewGradeRepo viewGradeRepo;
  void emiteViewGrade() async {
    emit(ProfileAndNotificationState.loadingGrade());
    final response = await viewGradeRepo.getViewGrade();
    response.when(success: (data) {
      grade.addAll(data.grades);
      emit(ProfileAndNotificationState.successGrade(data.grades));
    }, failure: (error) {
      emit(ProfileAndNotificationState.errorGrade(error: "Noooooot"));
    });
  }

  void emiteDeletUser() async {
    emit(ProfileAndNotificationState.loadingDelete());
    final response = await deletRepo.delUser(DeletUserRuqest('1'));
    response.when(success: (data) {
      emit(ProfileAndNotificationState.successDelete(data.message));
    }, failure: (error) {
      emit(ProfileAndNotificationState.errorDelete(error: "Noooooot"));
    });
  }
}
