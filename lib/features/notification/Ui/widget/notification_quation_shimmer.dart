import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/font_style.dart';

class NotificationQuestionShimmer extends StatelessWidget {
  const NotificationQuestionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) => Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: ColorManger.lightGray,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: ColorManger.primary_ColorBlue,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        ' 12/3/2024',
                        textDirection: TextDirection.rtl,
                        style: FontStyleAndText.fontmedia,
                      ),
                    ),
                  ),
                  Text(
                    'السؤال',
                    textDirection: TextDirection.rtl,
                    style: FontStyleAndText.fontmedia,
                  ),
                  verticalBox(10.h),
                  Text(
                    'آلية تثبيت فلاتر؟',
                    textDirection: TextDirection.rtl,
                    style: FontStyleAndText.fontmedia,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                    child: Shimmer.fromColors(
                      highlightColor: Colors.white,
                      baseColor: ColorManger.lightGray,
                      child: Card(
                        color: ColorManger.primary_ColorYello,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'الجواب',
                                textDirection: TextDirection.rtl,
                                style: FontStyleAndText.fontmedia,
                              ),
                              Text(
                                textDirection: TextDirection.rtl,
                                'الجواب الجواب الجواب الجواب الجواب الجواب الجواب الجواب الجواب الجواب الجواب الجواب الجواب الجواب الجوابالجواب الجواب',
                                maxLines: 4,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        itemCount: 6,
      ),
    );
  }
}
