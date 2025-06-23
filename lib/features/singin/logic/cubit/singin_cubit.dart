import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_programtion/features/otp/logic/model/otp_ruqest.dart';
import 'package:learn_programtion/features/otp/logic/repo/otp_repo.dart';
import 'package:learn_programtion/features/singin/logic/cubit/singin_stare.dart';
import 'package:learn_programtion/features/singin/logic/model/singin_reqest.dart';
import 'package:learn_programtion/features/singin/logic/repo/singin_repo.dart';

enum Check { student, teacher }

class SinginCubit extends Cubit<SinginState> {
  SinginCubit(this._singinRepo, this._otpRepo)
      : super(const SinginState.initial());
  final SinginRepo _singinRepo;
  final OtpRepo _otpRepo;
  TextEditingController? controllerEmail = TextEditingController();
  TextEditingController? controllerPassword = TextEditingController();
  TextEditingController? controllerPasswordCon = TextEditingController();
  TextEditingController? controllerName = TextEditingController();
  var key = GlobalKey<FormState>();
  static SinginCubit get(context) => BlocProvider.of(context);
  Check? site = Check.student;
  String? otp;
  bool obscure = true;
  bool obscure1 = true;
  void cnangeObscure(bool value) {
    obscure = !value;
  }

  void cnangeObscure1(bool value) {
    obscure1 = !value;
  }

  void emitOtp() async {
    emit(SinginState.loadingOtp());
    final respons = await _otpRepo.verifc(OtpRuqest(otp_code: otp));
    respons.when(
      success: (otpRespon) {
        emit(SinginState.successOtp(otpRespon));
      },
      failure: (errorHandler) {
        print('❌ Error: ottttttp');
        emit(SinginState.errorOtp(error: 'nototp'));
      },
    );
  }

  void emitSingin() async {
    emit(SinginState.loading());
    final respons = await _singinRepo.Singin(SinginRequest(
        email: controllerEmail?.text,
        password: controllerPassword?.text,
        username: controllerName?.text,
        account_type: 'student',
        confirmPassword: controllerPasswordCon?.text));
    respons.when(
      success: (singin) {
        emit(SinginState.success(singin));
        print('Token: ${singin.token}');
        print('User Email: ${singin.user?.email}');
      },
      failure: (errorHandler) {
        print('❌ Error: ${errorHandler.error}');
        emit(SinginState.error(error: 'notSingin'));
      },
    );
  }
}
