import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/features/login/logic/cubit/login_cubit.dart';
import 'package:learn_programtion/features/login/logic/cubit/login_stare.dart';

import '../../../../core/routing/router.dart';
import '../../../../core/theming/font_style.dart';

class ForgetConfirmBlocListener extends StatefulWidget {
  const ForgetConfirmBlocListener({super.key});

  @override
  State<ForgetConfirmBlocListener> createState() =>
      _ForgetConfirmBlocListenerState();
}

class _ForgetConfirmBlocListenerState extends State<ForgetConfirmBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoadingForgetConfirme ||
          current is ErrorForgetConfirme ||
          current is SuccessForgetConfirme,
      listener: (context, state) {
        state.whenOrNull(
          loadingForgetConfirme: () => showDialog(
              context: context,
              builder: (context) => Center(
                    child: CircularProgressIndicator(
                      color: ColorManger.primary_ColorBlue,
                    ),
                  )),
          successForgetConfirme: (forgetResponse) {
            print('successLogin');
            context.pushNamed(Routers.login);
          },
          errorForgetConfirme: (error) {
            errorLogin(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

void errorLogin(BuildContext context, String error) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            icon: Icon(
              Icons.error,
              color: Colors.red,
              size: 50,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
            content: Text(
              error,
              textDirection: TextDirection.rtl,
              style: FontStyleAndText.font_big,
            ),
            actions: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManger.primary_ColorBlue),
                  onPressed: () {
                    context.pushNamed(Routers.Welcome);
                  },
                  child: Text('حسناً', style: FontStyleAndText.buttonfonttext),
                ),
              )
            ],
          ));
}
