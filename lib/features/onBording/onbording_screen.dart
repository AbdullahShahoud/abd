import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/helper/extention.dart';
import 'package:learn_programtion/core/theming/font_style.dart';
import 'package:learn_programtion/features/onBording/onbording_Item.dart';
import 'package:learn_programtion/features/widget/button.dart';

import '../../core/routing/router.dart';

bool islast = false;
PageController controller = PageController(initialPage: 0);

class OnBoriding extends StatefulWidget {
  @override
  State<OnBoriding> createState() => _OnBoridingState();
}

class _OnBoridingState extends State<OnBoriding> {
  @override
  Widget build(BuildContext context) {
    List<Widget> onBordingScreen = [
      OnBordingItem(
        text:
            'مرحبًا بك في تطبيقنا! تعلم في أي وقت وأي مكان احصل على تجربة تعليمية مرنة تناسب جدولك   ',
        image: 'assets/svg/Mobile login-cuate.svg',
      ),
      OnBordingItem(
        text:
            'اكتشف طريقة سهلة ومرنة لتعلم المهارات الجديدة وتطوير ذاتك و استمتع بمجموعة واسعة من الدورات في مختلف المجالات، مصممة خصيصًا لتناسب جميع المستويات',
        image: 'assets/svg/Course app-pana.svg',
      ),
      OnBordingItem(
        text:
            ' اختبر مهاراتك وتقدم قم بإجراء اختبارات تقييمية بعد كل مستوى واختبار في نهاية الكورس  لقياس مدى فهمك وتحديد نقاط قوتك وتطويرها.',
        image: 'assets/svg/Online test-bro.svg',
      ),
    ];
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      PageView.builder(
        controller: controller,
        itemBuilder: (BuildContext context, int index) =>
            onBordingScreen[index],
        itemCount: onBordingScreen.length,
        onPageChanged: (index) {
          if (index == onBordingScreen.length - 1) {
            setState(() {
              islast = true;
            });
          } else {
            setState(() {
              islast = false;
            });
          }
        },
      ),
      Positioned(
          top: 20.h,
          right: 15.w,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(235, 235, 235, 235)),
              onPressed: () {
                context.pushNamed(Routers.Welcome);
              },
              child: Text('skip', style: FontStyleAndText.textfrom))),
      Positioned(
        bottom: 30.h,
        left: 20.w,
        right: 20.w,
        child: button(
            text: 'التالي',
            paddingH: 90.w,
            paddingV: 15.h,
            function: () async {
              if (islast) {
                //   SharedPreferences shared =
                //       await SharedPreferences.getInstance();
                //   shared.setBool('onBording', true);
                context.pushNamed(Routers.Welcome);
              } else {
                setState(() {
                  controller.nextPage(
                      duration: Duration(microseconds: 500),
                      curve: Curves.linear);
                });
              }
            }),
      ),
    ])));
  }
}
