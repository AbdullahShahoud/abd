// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/spacing.dart';
import 'package:learn_programtion/core/theming/font_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_programtion/features/widget/button.dart';

import '../../../../core/theming/color.dart';
import '../../../widget/background.dart';
import '../../../widget/text_from.dart';
import '../../logic/cubit/login_cubit.dart';
import 'forget_bloc_Listener.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
            Align(
              alignment: Alignment.center,
              child: Text(
                'استعادة كلمة المرور',
                style: FontStyleAndText.homefont,
              ),
            ),
            verticalBox(20.h),
            FromFields(
                vaildet: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'الرجاء ادخال البريد الالكتروني';
                  }
                },
                paddingContentV: 18.h,
                hint: 'البريد الاكتروني',
                controller: context.read<LoginCubit>().controllerPasswordReset!,
                icon: Icon(
                  Icons.email_outlined,
                  size: 25,
                  color: ColorManger.font,
                ),
                keyboardType: TextInputType.emailAddress,
                context: context),
            verticalBox(20.h),
            button(
                text: 'متابعة',
                function: () {
                  if (context.read<LoginCubit>().controllerPasswordReset !=
                      null) context.read<LoginCubit>().emitForget();
                }),
            ForgetBlocListener()
          ],
        ),
      ]),
    ));
  }
}
