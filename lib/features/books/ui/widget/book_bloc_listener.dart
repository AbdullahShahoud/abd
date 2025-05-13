import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_programtion/features/books/ui/widget/book_list.dart';
import 'package:learn_programtion/features/books/ui/widget/book_shimmer.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_state.dart';

import '../../logic/model/book_response.dart';

class BookBlocListener extends StatefulWidget {
  const BookBlocListener({super.key});

  @override
  State<BookBlocListener> createState() => _BookBlocListenerState();
}

class _BookBlocListenerState extends State<BookBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileAndNotificationCubit,
            ProfileAndNotificationState>(
        buildWhen: (previous, current) =>
            current is Loading || current is Success || current is Error,
        builder: ((context, state) {
          return state.maybeWhen(
            orElse: () {
              // return SizedBox.shrink();
              return errorGetBook();
              // return successGetBook(
              //     ProfileAndNotificationCubit.get(context).book);
            },
            success: (data) {
              return successGetBook(data);
            },
            error: (error) {
              return errorGetBook();
            },
            loading: () {
              return loadingGetBook();
            },
          );
        }));
  }
}

Widget successGetBook(List<Book> books) {
  return BookList(books);
}

Widget errorGetBook() {
  return Center(
    child: SvgPicture.asset('assets/svg/404error.svg'),
  );
}

Widget loadingGetBook() {
  return BookShinmmer();
}
