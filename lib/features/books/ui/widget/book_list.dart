// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/features/books/logic/model/book_response.dart';
import 'package:learn_programtion/features/books/ui/widget/book_item.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_state.dart';
import 'package:url_launcher/url_launcher.dart';

class BookList extends StatelessWidget {
  List<Book> books;
  BookList(this.books);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileAndNotificationCubit,
        ProfileAndNotificationState>(
      builder: (context, state) {
        return Container(
            height: 650.h,
            child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 3 / 5,
                children: List.generate(
                  books.length,
                  (index) => InkWell(
                    onTap: () async {
                      final Uri _url = Uri.parse(books[index].link);
                      if (!await launchUrl(_url)) {
                        throw Exception('Could not launch $_url');
                      }
                    },
                    child: BookItem(
                      id: books[index].id,
                      // image: books[index].image,
                      name: books[index].title,
                      url: books[index].link,
                      auth: books[index].author,
                    ),
                  ),
                )));
      },
    );
  }
}
