import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/spacing.dart';
import 'package:learn_programtion/core/theming/font_style.dart';
import 'package:learn_programtion/features/login/Ui/widget/forms.dart';
import 'package:learn_programtion/features/login/Ui/widget/login_bloc_listener.dart';
import 'package:learn_programtion/features/login/Ui/widget/no_accont.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widget/background.dart';

class HomeLogin extends StatefulWidget {
  const HomeLogin({super.key});

  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
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
              alignment: Alignment.centerRight,
              child: Text(
                'اهلا بك',
                style: FontStyleAndText.homefont,
              ),
            ),
            verticalBox(20.h),
            Forms(),
            verticalBox(20.h),
            NoAccont(),
            LoginBlocListener()
          ],
        ),
      ]),
    ));
  }
}
