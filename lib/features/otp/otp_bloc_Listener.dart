import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/routing/router.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/core/theming/font_style.dart';
import 'package:learn_programtion/features/singin/logic/cubit/singin_cubit.dart';
import 'package:learn_programtion/features/singin/logic/cubit/singin_stare.dart';

import 'logic/model/otp_response.dart';

class OtpBlocListener extends StatefulWidget {
  const OtpBlocListener({super.key});

  @override
  State<OtpBlocListener> createState() => _SinginBlocListenerState();
}

class _SinginBlocListenerState extends State<OtpBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SinginCubit, SinginState>(
      listenWhen: (previous, current) =>
          current is SinginLoadingOtp ||
          current is SinginErrorOtp ||
          current is SinginnSuccessOtp,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(
                color: ColorManger.primary_ColorBlue,
              ),
            ),
          ),
          success: (data) => SinginSuccess(context, data),
          error: (error) => singinError(context, error),
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

void SinginSuccess(BuildContext context, OtpResponse otp) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(otp.message!),
            actions: [
              TextButton(
                  onPressed: () {
                    context.pushNamed(Routers.home_page);
                  },
                  child: Text('خروج'))
            ],
          ));
}

void singinError(BuildContext context, String error) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            icon: Icon(
              Icons.error,
              color: Colors.red,
              size: 50,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
            content: Text(
              error,
              style: FontStyleAndText.font_big,
            ),
            actions: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManger.primary_ColorBlue),
                  onPressed: () {
                    context.pushNamed(Routers.home_page);
                  },
                  child: Text('حسناً', style: FontStyleAndText.buttonfonttext),
                ),
              )
            ],
          ));
}
