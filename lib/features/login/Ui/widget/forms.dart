// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/features/login/Ui/widget/forget_password.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/router.dart';
import '../../../../core/theming/color.dart';
import '../../../widget/button.dart';
import '../../../widget/text_from.dart';
import '../../logic/cubit/login_cubit.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().key,
        child: Column(
          children: [
            FromFields(
                vaildet: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'الرجاء ادخال البريد الالكتروني';
                  }
                },
                paddingContentV: 18.h,
                hint: 'البريد الاكتروني',
                controller: context.read<LoginCubit>().controllerEmail!,
                icon: Icon(
                  Icons.email_outlined,
                  size: 25,
                  color: ColorManger.font,
                ),
                keyboardType: TextInputType.emailAddress,
                context: context),
            FromFields(
              vaildet: (value) {
                if (value!.isEmpty || value == null) {
                  return 'الرجاء ادخال كلمة المرور';
                }
              },
              paddingContentV: 18.h,
              hint: 'كلمة المرور',
              controller: context.read<LoginCubit>().controllerPassword!,
              keyboardType: TextInputType.number,
              context: context,
              obscure: LoginCubit.get(context).obscure,
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    LoginCubit.get(context)
                        .cnangeObscure(LoginCubit.get(context).obscure);
                  });
                },
                icon: Icon(
                  LoginCubit.get(context).obscure
                      ? Icons.visibility_off
                      : Icons.visibility,
                  size: 30,
                  color: ColorManger.icon,
                ),
              ),
            ),
            ForgetPassword(),
            verticalBox(17.h),
            button(
                text: 'تسجيل الدخول',
                paddingH: 130.w,
                paddingV: 20,
                function: () {
                  ValidateLogin(context);
                  context.pushNamed(Routers.password);

                }),
          ],
        ));
  }
}
void ValidateLogin(BuildContext context) {
  if (context.read<LoginCubit>().key.currentState!.validate()) {
    context.read<LoginCubit>().emitLogin();
  }
}