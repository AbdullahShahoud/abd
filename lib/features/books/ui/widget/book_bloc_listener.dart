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
            current is LoadingBook ||
            current is SuccessBook ||
            current is ErrorBook,
        builder: ((context, state) {
          return state.maybeWhen(
            successBook: (data) {
              return successGetBook(data);
            },
            errorBook: (error) {
              return errorGetBook();
            },
            loadingBook: () {
              return loadingGetBook();
            },
            orElse: () {
              return SizedBox.shrink();
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
