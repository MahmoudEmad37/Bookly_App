import 'package:bookly/core/resourses/strings_manager.dart';
import 'package:bookly/core/resourses/style_manager.dart';
import 'package:bookly/core/resourses/values_manager.dart';
import 'package:bookly/features/home/presentation/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: AppSize.s50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
                child: Text(
                  AppStrings.bestSeller,
                  style: AppTextStyle.textStyle18,
                ),
              ),
              SizedBox(
                height: AppSize.s20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
