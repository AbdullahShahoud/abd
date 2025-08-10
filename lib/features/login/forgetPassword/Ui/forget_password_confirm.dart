// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_programtion/features/widget/button.dart';

import '../../../../core/theming/color.dart';
import '../../../widget/background.dart';
import '../../../widget/text_from.dart';
import '../../logic/cubit/login_cubit.dart';
import 'forget_confirm_bloc_listener.dart';

class ForgetPasswordConfirm extends StatefulWidget {
  const ForgetPasswordConfirm({super.key});

  @override
  State<ForgetPasswordConfirm> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPasswordConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Background(context),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: SvgPicture.asset('assets/svg/logo_text.svg',
                    width: 100.w, height: 100.h)),
            verticalBox(120.h),
            Form(
              child: Column(
                children: [
                  FromFields(
                      vaildet: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'الرجاء ادخال الكود ';
                        }
                      },
                      paddingContentV: 18.h,
                      hint: ' الكود',
                      controller:
                          context.read<LoginCubit>().controllerPasswordToken!,
                      icon: Icon(
                        Icons.email_outlined,
                        size: 25,
                        color: ColorManger.font,
                      ),
                      keyboardType: TextInputType.number,
                      context: context),
                  FromFields(
                      vaildet: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'الرجاء ادخال  كلمة المرور';
                        }
                      },
                      paddingContentV: 18.h,
                      hint: 'كلمة المرور',
                      controller: context
                          .read<LoginCubit>()
                          .controllerPasswordConfirme!,
                      icon: Icon(
                        Icons.email_outlined,
                        size: 25,
                        color: ColorManger.font,
                      ),
                      keyboardType: TextInputType.number,
                      context: context),
                ],
              ),
            ),
            verticalBox(20.h),
            button(
                text: 'متابعة',
                function: () {
                  if (context.read<LoginCubit>().controllerPasswordConfirme !=
                          null &&
                      context.read<LoginCubit>().controllerPasswordToken !=
                          null) context.read<LoginCubit>().emitForgetConfirm();
                }),
            ForgetConfirmBlocListener()
          ],
        ),
      ]),
    ));
  }
}
