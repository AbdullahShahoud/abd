// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/color.dart';
import '../../../../../core/theming/font_style.dart';
import '../../../../widget/button.dart';
import '../../../../widget/text_from.dart';
import '../../../courses/logic/courses_cubit/cubit/courser_cubit_cubit.dart';

class FormCourses extends StatefulWidget {
  const FormCourses({super.key});

  @override
  State<FormCourses> createState() => _FormCoursesState();
}

class _FormCoursesState extends State<FormCourses> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<CourserCubitTeacher>().keye,
        child: Column(
          children: [
            FromFields(
                vaildet: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'الرجاء ادخال الاسم';
                  }
                },
                paddingContentV: 18.h,
                hint: 'الاسم بالانجلزية',
                controller: context.read<CourserCubitTeacher>().controllername!,
                icon: Center(),
                keyboardType: TextInputType.name,
                context: context),
            verticalBox(10.h),
            FromFields(
                vaildet: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'الرجاء ادخال رابط الصورة';
                  }
                },
                paddingContentV: 18.h,
                hint: 'رابط الصورة ',
                controller:
                    context.read<CourserCubitTeacher>().controllerimage!,
                icon: Center(),
                keyboardType: TextInputType.emailAddress,
                context: context),
            verticalBox(10.h),
            // DropdownButton(items: items, onChanged: onChanged),
            // verticalBox(10.h),
            FromFields(
                vaildet: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'الرجاء ادخال مدة الكورس';
                  }
                },
                paddingContentV: 18.h,
                hint: ' مدة الكورس',
                controller: context.read<CourserCubitTeacher>().controllertime!,
                keyboardType: TextInputType.number,
                context: context,
                icon: Text('بالدقائق')),
            verticalBox(10.h),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return 'الرجاء ادخال وصف الكورس';
                }
                return null;
              },
              controller:
                  context.read<CourserCubitTeacher>().controllerdescription!,
              cursorColor: Colors.white,
              maxLines: 20,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                color: ColorManger.font,
              ),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 150.h, horizontal: 50.w),
                  hintText: 'وصف الكورس',
                  hintStyle: FontStyleAndText.textfrom,
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: ColorManger.primary_ColorYello)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red))),
              keyboardType: TextInputType.name,
            ),
            verticalBox(20.h),
            button(
                text: ' إنشاء كورس',
                paddingH: 135.w,
                paddingV: 20.h,
                function: () {
                  Vildatorcourse(context);
                })
          ],
        ));
  }
}

void Vildatorcourse(BuildContext context) {
  if (context.read<CourserCubitTeacher>().keye.currentState!.validate()) {
    // context.read<CourserCubitTeacher>().emitSingin();
  }
}
