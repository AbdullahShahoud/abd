// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/helper/spacing.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/core/theming/font_style.dart';
import 'package:learn_programtion/features/otp/otp_bloc_Listener.dart';
import 'package:learn_programtion/features/singin/logic/cubit/singin_cubit.dart';
import 'package:learn_programtion/features/widget/button.dart';

import '../../core/routing/router.dart';
import '../widget/background.dart';

class OTP extends StatelessWidget {
  OTP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Background(context),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: Text(
                'سارع',
                style: FontStyleAndText.homefont,
              ),
            ),
            verticalBox(20.h),
            OtpTextField(
              showCursor: true,
              numberOfFields: 5,
              filled: true,
              fillColor: Colors.white,
              disabledBorderColor: ColorManger.primary_ColorBlue,
              enabledBorderColor: Colors.black,
              showFieldAsBox: true,
              onCodeChanged: (String code) {
                SinginCubit.get(context).otp = code;
              },
              // onSubmit: (String verificationCode) {
              // showDialog(
              //     context: context,
              //     builder: (context) {
              //       return AlertDialog(
              //         title: Text("Verification Code"),
              //         content: Text('Code entered is $verificationCode'),
              //       );
              //     });
              // }, // end onSubmit
            ),
            OtpBlocListener(),
            verticalBox(30.h),
            button(
                text: 'المتابعة',
                paddingV: 20.h,
                function: () {
                  SinginCubit.get(context).emitOtp();
                  context.pushNamed(Routers.home_page);
                })
          ],
        ),
      ]),
    );
  }
}
