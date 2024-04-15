import 'package:bookly/core/resourses/assets_manager.dart';
import 'package:bookly/core/resourses/constants_manager.dart';
import 'package:bookly/core/resourses/routes_manager.dart';
import 'package:bookly/core/resourses/style_manager.dart';
import 'package:bookly/core/resourses/values_manager.dart';
import 'package:bookly/features/home/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsPage);
      },
      child: SizedBox(
        height: AppSize.s125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AppImageAssets.testImage,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        style: AppTextStyle.textStyle20
                            .copyWith(fontFamily: AppConstants.kGtSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(
                    height: AppSize.s3,
                  ),
                  Text(
                    'J.K. Rowling',
                    style:
                        AppTextStyle.textStyle14.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: AppSize.s3,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 \$',
                        style: AppTextStyle.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
