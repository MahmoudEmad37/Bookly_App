import 'package:bookly/core/resourses/values_manager.dart';
import 'package:bookly/core/component/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.s8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSize.s16),
                bottomLeft: Radius.circular(AppSize.s16),
              ),
            ),
          ),
          Expanded(
              child: CustomButton(
            fontSize: 16,
            text: 'Free Preview',
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }
}
