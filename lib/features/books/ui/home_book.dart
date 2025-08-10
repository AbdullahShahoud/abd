import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/DI/dependency_injection.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import '../../../core/helper/spacing.dart';
import 'widget/book_bloc_listener.dart';
import 'widget/tabBar_book.dart';

class HomeBook extends StatefulWidget {
  const HomeBook({super.key});

  @override
  State<HomeBook> createState() => _HomeBookState();
}

class _HomeBookState extends State<HomeBook> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => ProfileAndNotificationCubit(getIt(), getIt(),
          getIt(), getIt(), getIt(), getIt(), getIt(), getIt())
        ..emitBook(),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [TabBarBook(), verticalBox(10.h), BookBlocListener()]),
        ),
      ),
    ));
  }
}
