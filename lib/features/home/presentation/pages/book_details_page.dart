import 'package:bookly/features/home/presentation/widgets/book_details_page_body.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetailsPageBody(),
      ),
    );
  }
}
