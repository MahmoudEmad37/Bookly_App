import 'package:bookly/core/resourses/assets_manager.dart';
import 'package:bookly/core/resourses/style_manager.dart';
import 'package:bookly/core/resourses/values_manager.dart';
import 'package:bookly/features/home/presentation/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomBookImage(
            image: AppImageAssets.testImage,
          ),
        ),
        const SizedBox(
          height: AppSize.s43,
        ),
        Text(
          'The Jungle Book',
          style: AppTextStyle.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: AppSize.s6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: AppTextStyle.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.s18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: AppSize.s37,
        ),
        const BooksAction(),
      ],
    );
  }
}
