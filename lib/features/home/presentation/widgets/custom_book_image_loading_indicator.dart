import 'package:bookly/core/resourses/values_manager.dart';
import 'package:flutter/material.dart';

class CustomBookImageLoadingIndicator extends StatelessWidget {
  const CustomBookImageLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.s12),
        child: Container(
          color: Colors.grey[50],
        ),
      ),
    );
  }
}
