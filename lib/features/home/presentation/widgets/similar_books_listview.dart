import 'package:bookly/core/resourses/assets_manager.dart';
import 'package:bookly/core/resourses/values_manager.dart';
import 'package:bookly/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p5),
              child: CustomBookImage(
                image: AppImageAssets.testImage,
              ),
            );
          }),
    );
  }
}
