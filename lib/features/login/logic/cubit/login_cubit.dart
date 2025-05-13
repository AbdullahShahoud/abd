import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_programtion/features/login/logic/cubit/login_stare.dart';
import 'package:learn_programtion/features/login/logic/model/login_request.dart';
import 'package:learn_programtion/features/login/logic/repo/login_repo.dart';

import '../../../../core/helper/sherdPrefernce.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  LoginRepo _loginRepo;
  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController? controllerEmail = TextEditingController();
  TextEditingController? controllerPassword = TextEditingController();
  var key = GlobalKey<FormState>();

  TextEditingController? controllerEmailChangePassword =
      TextEditingController();
  var keyChangePassword = GlobalKey<FormState>();
  bool obscure = true;
  void cnangeObscure(bool value) {
    obscure = !value;
  }

  void emitLogin() async {
    emit(LoginState.initial());
    final response = await _loginRepo.login(LoginRequest(
        email: controllerEmail?.text, password: controllerPassword?.text));
    response.when(success: (loginResponse) async {
      await SharedPrefHelper.setData('token', loginResponse.token ?? '');

      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: "notLogin"));
    });
  }
}
