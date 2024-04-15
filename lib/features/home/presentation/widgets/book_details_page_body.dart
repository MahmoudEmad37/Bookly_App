import 'package:bookly/core/resourses/assets_manager.dart';
import 'package:bookly/core/resourses/values_manager.dart';
import 'package:bookly/features/home/presentation/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/widgets/custom_app_bar_book_details.dart';
import 'package:bookly/features/home/presentation/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsPageBody extends StatelessWidget {
  const BookDetailsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: AppSize.s50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: AppSize.s40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
