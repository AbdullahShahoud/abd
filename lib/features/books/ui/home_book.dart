import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/DI/dependency_injection.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import '../../../core/helper/spacing.dart';
import 'widget/book_bloc_listener.dart';
import 'widget/tabBar_book.dart';

class HomeBook extends StatelessWidget {
  const HomeBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => ProfileAndNotificationCubit(
          getIt(), getIt(), getIt(), getIt(), getIt(), getIt()),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [TabBarBook(), verticalBox(10.h), BookBlocListener()]),
        ),
      ),
    ));
  }
}
