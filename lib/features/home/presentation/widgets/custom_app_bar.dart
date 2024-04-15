import 'package:bookly/core/resourses/assets_manager.dart';
import 'package:bookly/core/resourses/routes_manager.dart';
import 'package:bookly/core/resourses/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: AppPadding.p40, bottom: AppPadding.p20),
      child: Row(
        children: [
          Image.asset(
            AppImageAssets.logo,
            height: AppSize.s18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.searchPage);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: AppSize.s22,
              )),
        ],
      ),
    );
  }
}
