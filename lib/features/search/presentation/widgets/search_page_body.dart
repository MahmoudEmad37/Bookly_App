import 'package:bookly/core/resourses/style_manager.dart';
import 'package:bookly/core/resourses/values_manager.dart';
import 'package:bookly/features/home/presentation/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/search/presentation/widgets/custom_search_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: AppSize.s16,
          ),
          Text(
            'Search Result',
            style: AppTextStyle.textStyle18,
          ),
          SizedBox(
            height: AppSize.s16,
          ),
          Expanded(
            child: SearchResultListView(),
          )
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
