// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/theming/color.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/font_style.dart';
import '../../logic/model/notification_response.dart';

class NotificationQuations extends StatelessWidget {
  NotificationQuations(this.questionAndResponse);
  List<QuestionAndResponse> questionAndResponse;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 8.h, left: 6.w, right: 6.w),
          child: Card(
            color: ColorManger.primary_ColorBlue,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      questionAndResponse[index].date!,
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
                verticalBox(8.h),
                Text(
                  questionAndResponse[index].question!,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: FontStyleAndText.fontmedia,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Card(
                    color: ColorManger.primary_ColorYello,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
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
                            questionAndResponse[index].response!,
                            maxLines: 4,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        itemCount: questionAndResponse.length,
      ),
    );
  }
}
