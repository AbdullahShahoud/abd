import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/routing/router.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/core/theming/font_style.dart';
import 'package:learn_programtion/features/singin/logic/cubit/singin_cubit.dart';
import 'package:learn_programtion/features/singin/logic/cubit/singin_stare.dart';

class SinginBlocListener extends StatefulWidget {
  const SinginBlocListener({super.key});

  @override
  State<SinginBlocListener> createState() => _SinginBlocListenerState();
}

class _SinginBlocListenerState extends State<SinginBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SinginCubit, SinginState>(
      listenWhen: (previous, current) =>
          current is SinginLoading ||
          current is SinginError ||
          current is SinginnSuccess,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => showDialog(
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(
                color: ColorManger.primary_ColorBlue,
              ),
            ),
          ),
          success: (data) => SinginSuccess(context),
          error: (error) => singinError(context),
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

void SinginSuccess(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('SinginSuccess'),
            actions: [
              TextButton(
                  onPressed: () {
                    context.pushNamed(Routers.home_page);
                  },
                  child: Text('خروج'))
            ],
          ));
  context.pushNamed(Routers.home_page);
}

void singinError(BuildContext context) {
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
              'error',
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
