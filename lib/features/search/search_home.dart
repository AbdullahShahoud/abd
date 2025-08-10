import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/features/books/logic/model/book_response.dart';

import '../books/ui/widget/book_item.dart';
import '../courses/logic/model/courses_response.dart';
import '../home/widget/courses/your_courses.dart';

class SearchCourseName extends SearchDelegate<String> {
  final List<CoursesResponse> courses;
  final List<String> history;

  SearchCourseName({required this.courses, required this.history});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isEmpty)
        IconButton(
          icon: const Icon(Icons.mic, color: Colors.black),
          onPressed: () {
            query = 'implement voice input';
          },
        )
      else
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, ''),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = courses
        .where((course) =>
            course.name!.toLowerCase().contains(query.toLowerCase()))
        .toList();
    if (results.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/search.jpg', width: 200.w, height: 140.h),
            const SizedBox(height: 16),
            const Text("لم يتم العثور على نتائج",
                style: TextStyle(fontSize: 18)),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) => YourCourses(
        context: context,
        image: results[index].image,
        name: results[index].name,
        nameteatcher: results[index].nameTeacher,
        type: results[index].type,
        time: results[index].time,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/search.jpg',
              width: 200.w,
              height: 140.h,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            const Text("ابدأ بالبحث عن كورس", style: TextStyle(fontSize: 18)),
          ],
        ),
      );
    }

    final suggestions = courses
        .where((course) =>
            course.name!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => YourCourses(
        context: context,
        image: suggestions[index].image,
        name: suggestions[index].name,
        nameteatcher: suggestions[index].nameTeacher,
        type: suggestions[index].type,
        time: suggestions[index].time,
      ),
    );
  }
}

class SearchBookName extends SearchDelegate<String> {
  final List<Book> books;
  final List<String> history;

  SearchBookName({required this.books, required this.history});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isEmpty)
        IconButton(
          icon: const Icon(Icons.mic, color: Colors.black),
          onPressed: () {
            query = 'implement voice input';
          },
        )
      else
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, ''),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = books
        .where((book) => book.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
    if (results.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/search.jpg',
              width: 200.w,
              height: 140.h,
            ),
            const SizedBox(height: 16),
            const Text("لم يتم العثور على نتائج",
                style: TextStyle(fontSize: 18)),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) => BookItem(
        // image: results[index].image,
        name: results[index].title,
        auth: results[index].author,
        url: results[index].link,
        id: results[index].id,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/search.jpg', width: 200.w, height: 140.h),
            const SizedBox(height: 16),
            const Text("ابدأ بالبحث عن كورس", style: TextStyle(fontSize: 18)),
          ],
        ),
      );
    }

    final suggestions = books
        .where((book) => book.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => BookItem(
        // image: suggestions[index].image,
        name: suggestions[index].title,
        auth: suggestions[index].author,
        url: suggestions[index].link,
        id: suggestions[index].id,
      ),
    );
  }
}
