// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/helper/spacing.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/core/theming/font_style.dart';
import 'package:learn_programtion/features/otp/widget/fromForget.dart';
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
            //  FormsForget(),
            //  OtpTextField(
            //   showCursor: true,
            // numberOfFields: 5,
            // filled:true,
            // fillColor: Colors.white,
            // disabledBorderColor:ColorManger.primary_ColorBlue,
            // enabledBorderColor: Colors.black,
            // showFieldAsBox: true,
            // onCodeChanged: (String code) {
            // },
            // onSubmit: (String verificationCode){
            //     showDialog(
            //         context: context,
            //         builder: (context){
            //         return AlertDialog(
            //             title: Text("Verification Code"),
            //             content: Text('Code entered is $verificationCode'),
            //         );
            //         }
            //     );
            // }, // end onSubmit
            //   ),
            // verticalBox(30.h),
            button(
                text: 'المتابعة',
                paddingV: 20.h,
                function: () {
                  context.pushNamed(Routers.home_page);
                })
          ],
        ),
      ]),
    );
  }
}
