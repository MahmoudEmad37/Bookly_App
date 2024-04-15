import 'package:bookly/core/resourses/color_manager.dart';
import 'package:bookly/core/resourses/constants_manager.dart';
import 'package:bookly/core/resourses/routes_manager.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(const BooklyApp());

  Hive.registerAdapter(BookEntityAdapter());

  await Hive.openBox(AppConstants.kFeaturedBox);
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.primaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
