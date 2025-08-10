import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_cubit.dart';
import 'package:learn_programtion/features/singin/logic/cubit/singin_stare.dart';
import 'package:learn_programtion/features/singin/logic/model/singin_reqest.dart';
import 'package:learn_programtion/features/singin/logic/repo/singin_repo.dart';

import '../../../../core/helper/sherdPrefernce.dart';

enum Check { student, teacher }

class SinginCubit extends Cubit<SinginState> {
  SinginCubit(this._singinRepo) : super(const SinginState.initial());
  final SinginRepo _singinRepo;
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

  void emitSingin() async {
    emit(SinginState.loading());
    final respons = await _singinRepo.Singin(SinginRequest(
        email: controllerEmail?.text,
        password: controllerPassword?.text,
        username: controllerName?.text,
        account_type: site == Check.student ? 'student' : 'teacher',
        confirmPassword: controllerPasswordCon?.text));
    respons.when(
      success: (singin) async {
        emit(SinginState.success(singin));
        await SharedPrefHelper.setData('token', singin.token ?? '');
        print(await SharedPrefHelper.getString('token'));
        CourseesCubit.get(context).id = singin.user?.id;
        print('User Email: ${singin.user!.email}');
        print('Message: ${singin.user!.username}');
      },
      failure: (errorHandler) {
        print('❌ Error: ${errorHandler.errorMessage}');
        emit(SinginState.error(error: 'notSingin'));
      },
    );
  }
}
